# 30-Minute H100 Spot Instance Deployment Plan

## Hardware Configuration Details
- Machine Type: a3-megagpu-8g
  - 208 vCPUs
  - 1872GB RAM
  - 8x NVIDIA H100-mega-80GB GPUs
  - 16 local SSDs

## Phase 1: Download Cluster Setup (0-5 minutes)
Deploy 4x c4a-highmem-72 spot instances for parallel downloads:

```bash
# Deploy Download Nodes in us-central1-a
for i in {1..4}; do
    gcloud compute instances create dl-node-$i \
        --zone=us-central1-a \
        --machine-type=c4a-highmem-72 \
        --provisioning-model=SPOT \
        --instance-termination-action=STOP
done
```

## Phase 2: H100 Cluster Setup (5-10 minutes)
Deploy primary a3-megagpu-8g spot instance:

```bash
# Primary Inference Cluster with H100s
gcloud compute instances create gpu-primary \
    --zone=us-central1-a \
    --machine-type=a3-megagpu-8g \
    --provisioning-model=SPOT \
    --instance-termination-action=STOP \
    --maintenance-policy=TERMINATE \
    --accelerator=type=nvidia-h100-mega-80gb,count=8
```

## Phase 3: Storage Setup (10-15 minutes)

```bash
# Create high-performance SSD for model storage
gcloud compute disks create model-storage \
    --size=4TB \
    --type=pd-ssd \
    --zone=us-central1-a

# Attach to download nodes
for node in dl-node-{1..4}; do
    gcloud compute instances attach-disk $node \
        --disk=model-storage \
        --mode=ro \
        --zone=us-central1-a
done
```

## Phase 4: Model Distribution (15-25 minutes)

### Download Distribution (Optimized for H100s):
- dl-node-1: Large models (70B+)
  - Llama-3-70B
  - BLOOM-176B
  - Mixtral-8x7B
  
- dl-node-2: Medium models (30-70B)
  - Falcon-40B
  - MPT-30B
  - CodeLlama-34B
  
- dl-node-3: Base models (7-30B)
  - Mistral-7B
  - Llama-2-13B
  - StarCoder-15B
  
- dl-node-4: Specialized models
  - Phi-2
  - RedPajama-7B
  - H2O-Danube-34B

## Phase 5: H100 Optimization (25-30 minutes)

### GPU Memory Allocation:
- H100-0 & H100-1: Large model inference (80GB each)
- H100-2 & H100-3: Medium model inference
- H100-4 & H100-5: Base model inference
- H100-6 & H100-7: Specialized model inference

### H100-Specific Optimizations:
1. Enable Tensor Cores for FP16/BF16 operations
2. Utilize NVLink for inter-GPU communication
3. Leverage HBM3 memory bandwidth
4. Enable MIG for optimal resource partitioning

## Monitoring Setup

```bash
# Deploy GPU-specific monitoring
gcloud monitoring dashboards create \
    --dashboard-json-file=h100-monitoring.json

# Set up H100-specific alerts
gcloud monitoring channels create \
    --display-name="H100-GPU-Alert" \
    --type=email \
    --email-address=admin@example.com
```

## Cost Optimization

Estimated costs (per hour):
- c4a-highmem-72 spot: ~$1.20/hour
- a3-megagpu-8g spot: ~$25-30/hour (varies by region)
- Total for 30-minute run: ~$16-18

## Execution Timeline

0-5 min:
- Deploy download nodes
- Set up storage

5-10 min:
- Deploy H100 node
- Configure NVIDIA drivers
- Enable monitoring

10-15 min:
- Mount storage
- Initialize H100 optimizations

15-25 min:
- Download models
- Convert to H100-optimized format

25-30 min:
- Start benchmarks
- Validate H100 performance

## Automation Script

```python
#!/usr/bin/env python3

import subprocess
import time

def setup_h100_node():
    """Configure H100-specific optimizations"""
    subprocess.run([
        "gcloud", "compute", "ssh", "gpu-primary",
        "--command=nvidia-smi -pm 1 && nvidia-smi -ac 1215,1410"
    ])

def deploy_infrastructure():
    # Deploy download nodes
    subprocess.run(["gcloud", "compute", "instances", "create", "dl-node-1"...])
    
    # Deploy H100 node
    subprocess.run(["gcloud", "compute", "instances", "create", "gpu-primary"...])
    
    # Set up storage
    subprocess.run(["gcloud", "compute", "disks", "create", "model-storage"...])

def optimize_for_h100():
    # H100-specific optimizations
    setup_h100_node()
    configure_nvidia_fabric()
    enable_tensor_cores()

if __name__ == "__main__":
    deploy_infrastructure()
    time.sleep(300)  # Wait for instance startup
    optimize_for_h100()
    start_downloads()
    time.sleep(600)  # Wait for downloads
    start_benchmarks()
```

## Cleanup Script

```bash
#!/bin/bash

# Delete instances
gcloud compute instances delete dl-node-{1..4} --quiet
gcloud compute instances delete gpu-primary --quiet

# Delete disks
gcloud compute disks delete model-storage --quiet

# Remove monitoring
gcloud monitoring dashboards delete $DASHBOARD_ID --quiet
```

## H100-Specific Notes
1. Leverage HBM3 memory (80GB per GPU, 3.35 TB/s bandwidth)
2. Utilize 4th gen Tensor Cores
3. Enable NVLink for 900 GB/s bi-directional bandwidth
4. Configure optimal power and clock settings
5. Use CUDA 12.0 or later for full H100 support
