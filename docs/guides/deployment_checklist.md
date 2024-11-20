# ML Infrastructure Deployment Checklist

## Pre-Deployment Verification (30 mins before)

### Quota Verification
- [ ] Check current quotas:
  ```bash
  gcloud compute regions describe us-central1 --format="yaml(quotas)"
  gcloud compute regions describe us-east4 --format="yaml(quotas)"
  ```
- [ ] Verify H100 availability in target regions
- [ ] Confirm C4A instance availability
- [ ] Check network quota limits

### Environment Setup
- [ ] Set required environment variables:
  ```bash
  export DATADOG_API_KEY="xxx"
  export DATADOG_APP_KEY="xxx"
  export TURBO_LICENSE="xxx"
  export PROJECT_ID=$(gcloud config get-value project)
  ```
- [ ] Verify GCP authentication:
  ```bash
  gcloud auth list
  gcloud config list
  ```
- [ ] Test API access:
  ```bash
  gcloud compute instances list
  ```

## Phase 1: Monitoring Setup (15 mins)

### Datadog Integration
- [ ] Run monitoring setup:
  ```bash
  chmod +x monitoring_setup.sh
  ./monitoring_setup.sh
  ```
- [ ] Verify dashboard creation
- [ ] Test alert configurations
- [ ] Check metric collection

### Turbonomic Setup
- [ ] Verify license activation
- [ ] Configure GCP integration
- [ ] Test resource group detection
- [ ] Validate optimization recommendations

## Phase 2: Infrastructure Deployment (30 mins)

### C4A Download Nodes
- [ ] Deploy download nodes:
  ```bash
  python deploy_phased_cluster.py --phase=download
  ```
- [ ] Verify network configuration:
  ```bash
  # Check MTU settings
  gcloud compute ssh dl-node-0 --command="ip link show | grep mtu"
  ```
- [ ] Test storage access:
  ```bash
  # Verify Hyperdisk performance
  gcloud compute ssh dl-node-0 --command="fio --name=test --size=1G --runtime=30"
  ```

### Storage Setup
- [ ] Create and configure storage:
  ```bash
  python deploy_phased_cluster.py --phase=storage
  ```
- [ ] Verify mount points
- [ ] Test read/write performance
- [ ] Check replication status

### H100 Nodes
- [ ] Deploy GPU nodes:
  ```bash
  python deploy_phased_cluster.py --phase=gpu
  ```
- [ ] Verify GPU detection:
  ```bash
  gcloud compute ssh gpu-primary --command="nvidia-smi"
  ```
- [ ] Check CUDA installation
- [ ] Test GPU performance

## Phase 3: Network Optimization (15 mins)

### Network Configuration
- [ ] Apply network optimizations:
  ```bash
  ./network_config.sh
  ```
- [ ] Verify MTU settings
- [ ] Test inter-node connectivity
- [ ] Check bandwidth capacity

### Load Balancer Setup
- [ ] Configure load balancers
- [ ] Test failover scenarios
- [ ] Verify health checks

## Phase 4: Model Pipeline Setup (30 mins)

### Download Pipeline
- [ ] Initialize download manager:
  ```bash
  python model_downloader.py --init
  ```
- [ ] Test parallel downloads
- [ ] Verify storage distribution
- [ ] Check download speeds

### Training Pipeline
- [ ] Configure training environment
- [ ] Test model loading
- [ ] Verify GPU utilization
- [ ] Check memory management

## Monitoring Verification (Continuous)

### Performance Metrics
- [ ] GPU utilization baseline
- [ ] Memory usage patterns
- [ ] Network throughput
- [ ] Storage IOPS

### Alert Configuration
- [ ] Test GPU alerts
- [ ] Verify memory alerts
- [ ] Check network alerts
- [ ] Validate cost alerts

## Recovery Procedures

### Spot Instance Recovery
```bash
# Recovery script location
/opt/ml/recovery/spot_recovery.sh

# Test recovery
python deploy_phased_cluster.py --test-recovery
```

### Network Failover
```bash
# Failover test command
python deploy_phased_cluster.py --test-failover

# Verify redundancy
python deploy_phased_cluster.py --verify-redundancy
```

## Success Criteria

### Performance Targets
- [ ] GPU Utilization > 85%
- [ ] Network Throughput > 100 Gbps
- [ ] Storage IOPS > 1M
- [ ] Memory Usage < 85%

### Monitoring Goals
- [ ] All metrics reporting
- [ ] Alerts functioning
- [ ] Dashboards accessible
- [ ] Log collection active

## Emergency Contacts

### Primary Contact
- Name: [NAME]
- Phone: [PHONE]
- Email: [EMAIL]

### Secondary Contact
- Name: [NAME]
- Phone: [PHONE]
- Email: [EMAIL]

## Rollback Procedure

### Quick Rollback
```bash
# Emergency rollback
./deploy_phased_cluster.py --rollback

# Verify state
./deploy_phased_cluster.py --verify-state
```

### Gradual Rollback
```bash
# Step-by-step rollback
./deploy_phased_cluster.py --rollback-phase=gpu
./deploy_phased_cluster.py --rollback-phase=storage
./deploy_phased_cluster.py --rollback-phase=network
```

## Post-Deployment Verification

### System Verification
- [ ] All nodes running
- [ ] GPUs accessible
- [ ] Network optimized
- [ ] Storage mounted

### Monitoring Verification
- [ ] Datadog reporting
- [ ] Turbonomic active
- [ ] Alerts configured
- [ ] Dashboards available

### Performance Verification
- [ ] Run benchmark suite
- [ ] Verify GPU performance
- [ ] Check network throughput
- [ ] Test storage performance

## Notes
1. Keep terminal logs for all operations
2. Document any deviations from plan
3. Track all error messages
4. Monitor cost accumulation
5. Save all performance metrics
