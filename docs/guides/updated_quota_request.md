# Updated GPU Quota Request (1.5x Current)

## Per Region Request

### H100 MEGA GPUs
```
PREEMPTIBLE_NVIDIA_H100_MEGA_GPUS: 24 (up from 16)
- Current: 16 GPUs (allows 2 a3-megagpu-8g instances)
- Request: 24 GPUs (allows 3 a3-megagpu-8g instances)
- 1.5x increase
```

### A100 GPUs
```
NVIDIA_A100_GPUS: 24 (up from 16)
- Current: 16 GPUs (1 a2-highgpu-16g instance)
- Request: 24 GPUs (1.5 a2-highgpu-16g instances)
- 1.5x increase

PREEMPTIBLE_NVIDIA_A100_GPUS: 96 (up from 64)
- Current: 64 GPUs
- Request: 96 GPUs
- 1.5x increase
```

### C4A CPUs
```
C4A_CPUS: 450 (up from 300)
- Current: 300 CPUs
- Request: 450 CPUs
- 1.5x increase
```

## Regions to Include
1. us-central1
2. us-east1
3. us-east4
4. us-west1
5. us-west4

## Total Request Across All Regions

### H100 MEGA GPUs
```
Total PREEMPTIBLE_NVIDIA_H100_MEGA_GPUS: 120
- Current: 80 (16 × 5 regions)
- Request: 120 (24 × 5 regions)
- Allows for 15 a3-megagpu-8g instances total
```

### A100 GPUs
```
Total NVIDIA_A100_GPUS: 120
- Current: 80 (16 × 5 regions)
- Request: 120 (24 × 5 regions)
- Allows for 7.5 a2-highgpu-16g instances total

Total PREEMPTIBLE_NVIDIA_A100_GPUS: 480
- Current: 320 (64 × 5 regions)
- Request: 480 (96 × 5 regions)
```

### C4A CPUs
```
Total C4A_CPUS: 2,250
- Current: 1,500 (300 × 5 regions)
- Request: 2,250 (450 × 5 regions)
```

## Additional Requirements

### Storage Per Region
```
PERSISTENT_DISK_SSD_GB: 60,000
LOCAL_SSD_TOTAL_GB: 45,000
```

### Network
```
INTERNAL_ADDRESSES: 50
EXTERNAL_ADDRESSES: 30
```

## Justification
1. Increased capacity needed for:
   - Large language model training
   - Distributed training workloads
   - Development and testing environments
   - Production inference systems

2. Multi-region deployment for:
   - High availability
   - Disaster recovery
   - Geographic distribution
   - Load balancing

3. Mix of GPU types for:
   - Different workload requirements
   - Cost optimization
   - Development vs production needs
   - Batch vs real-time processing
