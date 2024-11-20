# GCP Quota Analysis for ADAPT Platform

## Regional Distribution

### Primary Regions
1. us-central1 (Council Bluffs, Iowa)
   - Zones: a, b, c, f
   - Primary compute hub
   - Current C4A: 300 CPUs confirmed
   - Current HyperDisk Extreme: 5,000 IOPS of 720,000 provisioned

2. us-east4 (Ashburn, Virginia)
   - Major East Coast hub
   - Need to verify current quotas

3. us-west1 (The Dalles, Oregon)
   - West Coast presence
   - Need to verify current quotas

4. us-east1 (Moncks Corner, South Carolina)
   - Southeast coverage
   - Need to verify current quotas

### Secondary Regions
5. us-west4 (Las Vegas, Nevada)
   - Western expansion
   - Need to verify current quotas

6. us-west2 (Los Angeles, California)
   - California presence
   - Need to verify current quotas

7. us-west3 (Salt Lake City, Utah)
   - Mountain region
   - Need to verify current quotas

8. us-east5 (Columbus, Ohio)
   - Midwest coverage
   - Need to verify current quotas

9. us-south1 (Dallas, Texas)
   - Southern hub
   - Need to verify current quotas

## Per VM Family Quotas

### A3 Family (H100)
Target per primary region:
```
- 144 H100 GPUs (18 instances × 8 GPUs)
- 3,744 vCPUs (18 instances × 208 vCPUs)
- 33,696 GB Memory (18 × 1,872 GB)
```

Target per secondary region:
```
- 96 H100 GPUs (12 instances × 8 GPUs)
- 2,496 vCPUs (12 instances × 208 vCPUs)
- 22,464 GB Memory (12 × 1,872 GB)
```

### M3 Family
Target per primary region:
```
- 1,920 vCPUs (15 instances × 128 vCPUs)
- 29,280 GB Memory (15 × 1,952 GB)
```

Target per secondary region:
```
- 1,280 vCPUs (10 instances × 128 vCPUs)
- 19,520 GB Memory (10 × 1,952 GB)
```

### C4A Family
Primary regions:
```
us-central1:
- Current: 300 CPUs
- Target: 2,160 CPUs (30 instances × 72 vCPUs)
- Memory Target: 17,280 GB (30 × 576 GB)

Other primary regions:
- Target: 2,160 CPUs each
- Memory Target: 17,280 GB each
```

Secondary regions:
```
- Target: 1,440 CPUs (20 instances × 72 vCPUs)
- Memory Target: 11,520 GB (20 × 576 GB)
```

## Storage Quotas

### HyperDisk ML
Primary regions:
```
- Target: 120 TB (30 volumes × 4 TB)
- IOPS Target: 500,000 per volume
- Throughput: 7,000 MBps per volume
```

Secondary regions:
```
- Target: 80 TB (20 volumes × 4 TB)
- IOPS Target: 500,000 per volume
- Throughput: 7,000 MBps per volume
```

### HyperDisk Extreme
Primary regions:
```
us-central1:
- Current: 5,000 IOPS of 720,000 provisioned
- Target: 75 TB (25 volumes × 3 TB)
- IOPS Target: 350,000 per volume
- Throughput: 5,000 MBps per volume
```

Secondary regions:
```
- Target: 45 TB (15 volumes × 3 TB)
- IOPS Target: 350,000 per volume
- Throughput: 5,000 MBps per volume
```

### Local SSD
Primary regions:
```
- Target: 90,000 GB (15 instances × 6,000 GB)
- IOPS Target: 750,000 per instance
- Throughput: 6,000 MBps per instance
```

Secondary regions:
```
- Target: 60,000 GB (10 instances × 6,000 GB)
- IOPS Target: 750,000 per instance
- Throughput: 6,000 MBps per instance
```

## Network Requirements

### Primary Regions
```
A3 Mega Networking:
- Per Instance: 200 Gbps
- Total per Region: 3.6 Tbps (18 instances)

M3 Mega Networking:
- Per Instance: 100 Gbps
- Total per Region: 1.5 Tbps (15 instances)

C4A Networking:
- Per Instance: 100 Gbps
- Total per Region: 3.0 Tbps (30 instances)
```

### Secondary Regions
```
A3 Mega Networking:
- Per Instance: 200 Gbps
- Total per Region: 2.4 Tbps (12 instances)

M3 Mega Networking:
- Per Instance: 100 Gbps
- Total per Region: 1.0 Tbps (10 instances)

C4A Networking:
- Per Instance: 100 Gbps
- Total per Region: 2.0 Tbps (20 instances)
```

## Next Steps

1. Verify current quotas for:
   - All VM families in each region
   - HyperDisk quotas across regions
   - Network quotas per region
   - Per-project limits

2. Identify gaps between current and target quotas

3. Create region-specific quota increase requests

4. Monitor quota usage and adjust as needed

Note: All target numbers are based on our infrastructure requirements for supporting:
- 1000+ LLM processing
- 500+ concurrent datasets
- Distributed training capabilities
- Natural evolution and adaptation
