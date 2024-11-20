#!/bin/bash

# Monitoring setup script for ML infrastructure
# Integrates Datadog, Turbonomic, and custom monitoring

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Configuration
DATADOG_API_KEY=${DATADOG_API_KEY:-""}
DATADOG_APP_KEY=${DATADOG_APP_KEY:-""}
TURBO_LICENSE=${TURBO_LICENSE:-""}
PROJECT_ID=$(gcloud config get-value project)
CLUSTER_NAME="ml-cluster"

log() {
    echo -e "${GREEN}[$(date +'%Y-%m-%d %H:%M:%S')] $1${NC}"
}

warn() {
    echo -e "${YELLOW}[$(date +'%Y-%m-%d %H:%M:%S')] WARNING: $1${NC}"
}

error() {
    echo -e "${RED}[$(date +'%Y-%m-%d %H:%M:%S')] ERROR: $1${NC}"
    exit 1
}

check_prerequisites() {
    log "Checking prerequisites..."
    
    # Check required environment variables
    [[ -z "$DATADOG_API_KEY" ]] && error "DATADOG_API_KEY is required"
    [[ -z "$DATADOG_APP_KEY" ]] && error "DATADOG_APP_KEY is required"
    [[ -z "$TURBO_LICENSE" ]] && error "TURBO_LICENSE is required"
    
    # Check required tools
    command -v curl >/dev/null 2>&1 || error "curl is required"
    command -v jq >/dev/null 2>&1 || error "jq is required"
    command -v gcloud >/dev/null 2>&1 || error "gcloud is required"
}

setup_datadog() {
    log "Setting up Datadog integration..."
    
    # Install Datadog agent
    DD_API_KEY=$DATADOG_API_KEY DD_SITE="datadoghq.com" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script_agent7.sh)"
    
    # Configure GPU monitoring
    cat << EOF > /etc/datadog-agent/conf.d/gpu.d/conf.yaml
init_config:

instances:
  - collect_metrics: true
    collect_events: true
    gpu_collection_interval: 15
    collect_gpu_flops: true
    collect_gpu_memory: true
    collect_gpu_temp: true
    collect_gpu_power: true
EOF

    # Configure network monitoring
    cat << EOF > /etc/datadog-agent/conf.d/network.d/conf.yaml
init_config:

instances:
  - collect_connection_state: true
    collect_tcp_metrics: true
    collect_latency_metrics: true
    collect_throughput_metrics: true
EOF

    # Configure custom ML metrics
    cat << EOF > /etc/datadog-agent/conf.d/ml_metrics.d/conf.yaml
init_config:

instances:
  - custom_metrics:
      - name: ml.training.progress
        type: gauge
      - name: ml.model.accuracy
        type: gauge
      - name: ml.inference.latency
        type: histogram
      - name: ml.gpu.memory_used
        type: gauge
EOF

    # Restart Datadog agent
    systemctl restart datadog-agent
}

setup_turbonomic() {
    log "Setting up Turbonomic..."
    
    # Download Turbonomic installer
    curl -L -o turbo-install.sh "https://download.turbonomic.com/install/turbo-install.sh"
    chmod +x turbo-install.sh
    
    # Install Turbonomic
    ./turbo-install.sh \
        --license "$TURBO_LICENSE" \
        --cloud gcp \
        --project "$PROJECT_ID"
    
    # Configure GCP integration
    turbo config set-cloud-credentials \
        --type gcp \
        --project "$PROJECT_ID"
}

setup_custom_monitoring() {
    log "Setting up custom monitoring..."
    
    # Create monitoring directory
    mkdir -p /opt/ml-monitoring
    
    # Create custom monitoring script
    cat << 'EOF' > /opt/ml-monitoring/collect_metrics.py
#!/usr/bin/env python3

import time
import json
import subprocess
import psutil
import GPUtil
from datadog import initialize, statsd

# Initialize the Datadog client
initialize(
    api_key='${DATADOG_API_KEY}',
    app_key='${DATADOG_APP_KEY}'
)

def collect_gpu_metrics():
    """Collect detailed GPU metrics"""
    gpus = GPUtil.getGPUs()
    for i, gpu in enumerate(gpus):
        # GPU utilization
        statsd.gauge(f'ml.gpu.{i}.utilization', gpu.load * 100)
        # GPU memory
        statsd.gauge(f'ml.gpu.{i}.memory_used', gpu.memoryUsed)
        statsd.gauge(f'ml.gpu.{i}.memory_total', gpu.memoryTotal)
        # GPU temperature
        statsd.gauge(f'ml.gpu.{i}.temperature', gpu.temperature)
        # GPU power
        statsd.gauge(f'ml.gpu.{i}.power_usage', gpu.power_usage)

def collect_network_metrics():
    """Collect detailed network metrics"""
    net_io = psutil.net_io_counters()
    # Network throughput
    statsd.gauge('ml.network.bytes_sent', net_io.bytes_sent)
    statsd.gauge('ml.network.bytes_recv', net_io.bytes_recv)
    # Network packets
    statsd.gauge('ml.network.packets_sent', net_io.packets_sent)
    statsd.gauge('ml.network.packets_recv', net_io.packets_recv)
    # Network errors
    statsd.gauge('ml.network.errin', net_io.errin)
    statsd.gauge('ml.network.errout', net_io.errout)

def collect_system_metrics():
    """Collect system-wide metrics"""
    # CPU metrics
    cpu_percent = psutil.cpu_percent(interval=1, percpu=True)
    for i, cpu in enumerate(cpu_percent):
        statsd.gauge(f'ml.cpu.{i}.utilization', cpu)
    
    # Memory metrics
    mem = psutil.virtual_memory()
    statsd.gauge('ml.memory.total', mem.total)
    statsd.gauge('ml.memory.available', mem.available)
    statsd.gauge('ml.memory.used', mem.used)
    statsd.gauge('ml.memory.percent', mem.percent)

def main():
    while True:
        try:
            collect_gpu_metrics()
            collect_network_metrics()
            collect_system_metrics()
        except Exception as e:
            print(f"Error collecting metrics: {e}")
        time.sleep(15)  # Collect every 15 seconds

if __name__ == "__main__":
    main()
EOF

    # Make script executable
    chmod +x /opt/ml-monitoring/collect_metrics.py
    
    # Create systemd service
    cat << EOF > /etc/systemd/system/ml-monitoring.service
[Unit]
Description=ML Infrastructure Monitoring
After=network.target

[Service]
Type=simple
ExecStart=/opt/ml-monitoring/collect_metrics.py
Restart=always
User=root
Environment=DATADOG_API_KEY=${DATADOG_API_KEY}
Environment=DATADOG_APP_KEY=${DATADOG_APP_KEY}

[Install]
WantedBy=multi-user.target
EOF

    # Start monitoring service
    systemctl daemon-reload
    systemctl enable ml-monitoring
    systemctl start ml-monitoring
}

create_dashboards() {
    log "Creating Datadog dashboards..."
    
    # Create GPU Performance Dashboard
    curl -X POST "https://api.datadoghq.com/api/v1/dashboard" \
        -H "Content-Type: application/json" \
        -H "DD-API-KEY: ${DATADOG_API_KEY}" \
        -H "DD-APPLICATION-KEY: ${DATADOG_APP_KEY}" \
        -d @- << EOF
{
    "title": "ML Infrastructure Performance",
    "description": "GPU, Network, and System Performance Metrics",
    "widgets": [
        {
            "definition": {
                "type": "timeseries",
                "requests": [
                    {
                        "q": "avg:ml.gpu.*.utilization{*}",
                        "display_type": "line"
                    }
                ],
                "title": "GPU Utilization"
            }
        },
        {
            "definition": {
                "type": "timeseries",
                "requests": [
                    {
                        "q": "avg:ml.network.bytes_sent{*}",
                        "display_type": "area"
                    }
                ],
                "title": "Network Throughput"
            }
        },
        {
            "definition": {
                "type": "timeseries",
                "requests": [
                    {
                        "q": "avg:ml.memory.percent{*}",
                        "display_type": "line"
                    }
                ],
                "title": "Memory Usage"
            }
        }
    ],
    "layout_type": "ordered"
}
EOF
}

setup_alerts() {
    log "Setting up monitoring alerts..."
    
    # Create GPU utilization alert
    curl -X POST "https://api.datadoghq.com/api/v1/monitor" \
        -H "Content-Type: application/json" \
        -H "DD-API-KEY: ${DATADOG_API_KEY}" \
        -H "DD-APPLICATION-KEY: ${DATADOG_APP_KEY}" \
        -d @- << EOF
{
    "name": "GPU Utilization Alert",
    "type": "metric alert",
    "query": "avg(last_5m):avg:ml.gpu.*.utilization{*} > 90",
    "message": "GPU utilization is above 90% for 5 minutes",
    "tags": ["service:ml-infrastructure"],
    "priority": 2,
    "options": {
        "thresholds": {
            "critical": 90,
            "warning": 80
        },
        "notify_no_data": true,
        "notify_audit": true,
        "include_tags": true
    }
}
EOF

    # Create memory usage alert
    curl -X POST "https://api.datadoghq.com/api/v1/monitor" \
        -H "Content-Type: application/json" \
        -H "DD-API-KEY: ${DATADOG_API_KEY}" \
        -H "DD-APPLICATION-KEY: ${DATADOG_APP_KEY}" \
        -d @- << EOF
{
    "name": "Memory Usage Alert",
    "type": "metric alert",
    "query": "avg(last_5m):avg:ml.memory.percent{*} > 85",
    "message": "Memory usage is above 85% for 5 minutes",
    "tags": ["service:ml-infrastructure"],
    "priority": 2,
    "options": {
        "thresholds": {
            "critical": 85,
            "warning": 75
        },
        "notify_no_data": true,
        "notify_audit": true,
        "include_tags": true
    }
}
EOF

    # Create network throughput alert
    curl -X POST "https://api.datadoghq.com/api/v1/monitor" \
        -H "Content-Type: application/json" \
        -H "DD-API-KEY: ${DATADOG_API_KEY}" \
        -H "DD-APPLICATION-KEY: ${DATADOG_APP_KEY}" \
        -d @- << EOF
{
    "name": "Network Throughput Alert",
    "type": "metric alert",
    "query": "avg(last_5m):avg:ml.network.bytes_sent{*} > 7516192768",
    "message": "Network throughput is above 7 Gbps for 5 minutes",
    "tags": ["service:ml-infrastructure"],
    "priority": 2,
    "options": {
        "thresholds": {
            "critical": 7516192768,
            "warning": 6442450944
        },
        "notify_no_data": true,
        "notify_audit": true,
        "include_tags": true
    }
}
EOF
}

main() {
    log "Starting monitoring setup..."
    
    check_prerequisites
    setup_datadog
    setup_turbonomic
    setup_custom_monitoring
    create_dashboards
    setup_alerts
    
    log "Monitoring setup completed successfully!"
    log "Dashboards available at: https://app.datadoghq.com/dashboard/lists"
    log "Turbonomic available at: https://localhost:8080"
}

# Run main function
main
