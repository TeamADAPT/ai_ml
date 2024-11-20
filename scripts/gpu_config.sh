#!/bin/bash

# GPU Configuration script for H100 optimization
# Configures CUDA, drivers, and optimizes for FSDP, FP8, and TTA

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

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

setup_cuda_environment() {
    log "Setting up CUDA environment..."
    
    # Install CUDA 12.1 and required drivers
    apt-get update && apt-get install -y \
        cuda-12-1 \
        cuda-drivers-525 \
        cuda-toolkit-12-1

    # Set CUDA environment variables
    cat << EOF >> /etc/environment
CUDA_HOME=/usr/local/cuda
PATH=\$PATH:\$CUDA_HOME/bin
LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:\$CUDA_HOME/lib64
EOF

    # Configure dynamic linking
    echo "/usr/local/cuda/lib64" > /etc/ld.so.conf.d/cuda.conf
    ldconfig
}

optimize_gpu_settings() {
    log "Optimizing GPU settings..."
    
    # Enable persistence mode
    nvidia-smi -pm 1
    
    # Set GPU clocks to maximum performance
    nvidia-smi -ac 1215,1410
    
    # Enable MIG support
    nvidia-smi -mig 1
    
    # Configure compute mode to allow multiple processes
    nvidia-smi -c DEFAULT
    
    # Enable ECC memory
    nvidia-smi --ecc-config=1
}

setup_gpu_monitoring() {
    log "Setting up GPU monitoring..."
    
    # Create monitoring directory
    mkdir -p /opt/gpu-monitoring
    
    # Create GPU metrics collection script
    cat << 'EOF' > /opt/gpu-monitoring/collect_gpu_metrics.py
#!/usr/bin/env python3

import time
import json
import subprocess
from datetime import datetime
import nvidia_smi
from datadog import initialize, statsd

def collect_gpu_metrics():
    nvidia_smi.nvmlInit()
    device_count = nvidia_smi.nvmlDeviceGetCount()
    
    metrics = []
    for i in range(device_count):
        handle = nvidia_smi.nvmlDeviceGetHandleByIndex(i)
        
        # Get memory info
        mem_info = nvidia_smi.nvmlDeviceGetMemoryInfo(handle)
        
        # Get utilization rates
        util_rates = nvidia_smi.nvmlDeviceGetUtilizationRates(handle)
        
        # Get temperature
        temp = nvidia_smi.nvmlDeviceGetTemperature(handle, nvidia_smi.NVML_TEMPERATURE_GPU)
        
        # Get power usage
        power = nvidia_smi.nvmlDeviceGetPowerUsage(handle) / 1000.0  # Convert to watts
        
        # Get compute mode
        compute_mode = nvidia_smi.nvmlDeviceGetComputeMode(handle)
        
        # Get ECC errors
        ecc_errors = nvidia_smi.nvmlDeviceGetTotalEccErrors(handle, nvidia_smi.NVML_MEMORY_ERROR_TYPE_UNCORRECTED)
        
        metrics.append({
            'gpu_id': i,
            'memory_used': mem_info.used / 1024**2,  # Convert to MB
            'memory_total': mem_info.total / 1024**2,
            'gpu_utilization': util_rates.gpu,
            'memory_utilization': util_rates.memory,
            'temperature': temp,
            'power_usage': power,
            'compute_mode': compute_mode,
            'ecc_errors': ecc_errors,
            'timestamp': datetime.now().isoformat()
        })
    
    return metrics

def main():
    # Initialize Datadog
    initialize(api_key='${DATADOG_API_KEY}')
    
    while True:
        try:
            metrics = collect_gpu_metrics()
            
            # Send metrics to Datadog
            for gpu_metrics in metrics:
                gpu_id = gpu_metrics['gpu_id']
                
                # GPU utilization
                statsd.gauge(f'gpu.{gpu_id}.utilization', gpu_metrics['gpu_utilization'])
                
                # Memory usage
                statsd.gauge(f'gpu.{gpu_id}.memory.used', gpu_metrics['memory_used'])
                statsd.gauge(f'gpu.{gpu_id}.memory.utilization', gpu_metrics['memory_utilization'])
                
                # Temperature
                statsd.gauge(f'gpu.{gpu_id}.temperature', gpu_metrics['temperature'])
                
                # Power usage
                statsd.gauge(f'gpu.{gpu_id}.power', gpu_metrics['power_usage'])
                
                # ECC errors
                statsd.gauge(f'gpu.{gpu_id}.ecc_errors', gpu_metrics['ecc_errors'])
            
            # Log metrics locally
            with open('/var/log/gpu-metrics.json', 'a') as f:
                json.dump(metrics, f)
                f.write('\n')
                
        except Exception as e:
            print(f"Error collecting metrics: {e}")
            
        time.sleep(15)  # Collect every 15 seconds

if __name__ == "__main__":
    main()
EOF

    # Make script executable
    chmod +x /opt/gpu-monitoring/collect_gpu_metrics.py
    
    # Create systemd service
    cat << EOF > /etc/systemd/system/gpu-monitoring.service
[Unit]
Description=GPU Metrics Collection
After=nvidia-persistenced.service

[Service]
Type=simple
ExecStart=/opt/gpu-monitoring/collect_gpu_metrics.py
Restart=always
User=root

[Install]
WantedBy=multi-user.target
EOF

    # Start monitoring service
    systemctl daemon-reload
    systemctl enable gpu-monitoring
    systemctl start gpu-monitoring
}

optimize_for_ml() {
    log "Optimizing for ML workloads..."
    
    # Configure NUMA settings for optimal GPU-CPU affinity
    cat << EOF > /etc/sysctl.d/10-numa-balancing.conf
kernel.numa_balancing=0
vm.zone_reclaim_mode=0
EOF

    # Apply NUMA settings
    sysctl -p /etc/sysctl.d/10-numa-balancing.conf
    
    # Configure GPU NUMA affinity
    for gpu in $(nvidia-smi --query-gpu=gpu_uuid --format=csv,noheader); do
        nvidia-smi topo -m | grep $gpu
    done
}

setup_distributed_training() {
    log "Setting up distributed training environment..."
    
    # Install PyTorch with CUDA support
    pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121
    
    # Install distributed training dependencies
    pip3 install torch-distributed-fsdp
    
    # Configure NCCL for distributed training
    cat << EOF >> /etc/environment
NCCL_DEBUG=INFO
NCCL_SOCKET_IFNAME=eth0
NCCL_IB_DISABLE=0
NCCL_NET_GDR_LEVEL=5
EOF

    # Enable CUDA Multi-Process Service (MPS)
    nvidia-smi -i 0 -c EXCLUSIVE_PROCESS
    nvidia-cuda-mps-control -d
}

setup_fp8_support() {
    log "Setting up FP8 precision support..."
    
    # Install required packages
    pip3 install --upgrade nvidia-cuda-runtime-cu12 nvidia-cublas-cu12 nvidia-cusolver-cu12
    
    # Configure environment for FP8
    cat << EOF >> /etc/environment
NVIDIA_TF32_OVERRIDE=0
CUDA_MODULE_LOADING=LAZY
TORCH_CUDA_ARCH_LIST="8.9"  # For H100
EOF
}

setup_tta_support() {
    log "Setting up Test-Time Adaptation support..."
    
    # Install TTA dependencies
    pip3 install torch-tta adaptorch
    
    # Configure TTA settings
    cat << EOF > /etc/tta-config.json
{
    "adaptation_steps": 5,
    "learning_rate": 1e-5,
    "momentum": 0.9,
    "weight_decay": 0.0005
}
EOF
}

main() {
    log "Starting GPU configuration..."
    
    setup_cuda_environment
    optimize_gpu_settings
    setup_gpu_monitoring
    optimize_for_ml
    setup_distributed_training
    setup_fp8_support
    setup_tta_support
    
    log "GPU configuration completed successfully!"
    
    # Verify setup
    nvidia-smi
    python3 -c "import torch; print(f'PyTorch CUDA available: {torch.cuda.is_available()}')"
    python3 -c "import torch; print(f'PyTorch version: {torch.__version__}')"
}

# Run main function
main
