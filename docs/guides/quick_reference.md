# ML Infrastructure Quick Reference Guide

## Current State (GCP H100s)

### Infrastructure
```
C4A Nodes (4x)          →    H100 Nodes (2x)
72 vCPU, 576GB RAM           8x H100-80GB GPUs
100 Gbps networking          1,800 Gbps networking
Hyperdisk Extreme           6,000 GiB Local SSD
```

### Key Commands
```bash
# Deploy cluster
./setup.sh && python deploy_phased_cluster.py

# Monitor status
python deploy_phased_cluster.py --status

# Recovery
python deploy_phased_cluster.py --recover
```

## Future State (Hybrid with Databricks)

### Infrastructure Split
```
Databricks (60%)         GCP H100s (40%)
├── Training            ├── Large Models
├── Batch Inference     ├── Real-time Inference
└── Data Processing     └── Custom Training
```

### Cost Comparison
```
Current Monthly: ~$62.5K
Target Monthly: ~$41.5K
Expected Savings: ~$21K (33.6%)
```

## Immediate Actions

1. Pre-Transition
   ```bash
   # Baseline performance
   python benchmark.py --current-setup
   
   # Cost monitoring
   python cost_tracker.py --enable
   ```

2. Databricks Setup
   ```python
   # Initial workspace
   databricks workspace create \
     --profile PROFILE \
     --workspace-name ML-Cluster
   ```

3. Quota Request
   ```
   Region: us-east-4
   A100 GPU quota: 16
   Storage quota: 10TB
   ```

## Timeline Overview

```
Week 1: Setup & Initial Testing
├── Day 1-2: Environment Setup
├── Day 3-5: Parallel Infrastructure
└── Day 6-7: Initial Testing

Week 2: Migration
├── Day 8-10: Data Migration
├── Day 11-12: Pipeline Migration
└── Day 13-14: Performance Tuning

Week 3-4: Hybrid Operation
├── Week 3: Load Distribution
└── Week 4: Optimization
```

## Quick Decision Guide

### When to Use GCP H100s
- Large model training (>70B params)
- Real-time inference requirements
- Custom hardware optimizations
- Network-intensive operations

### When to Use Databricks
- Standard ML pipelines
- Collaborative development
- Automated MLOps needs
- Cost-sensitive workloads

## Performance Targets

```python
targets = {
    'training_throughput': '>=95% of current',
    'inference_latency': '<=110% of current',
    'cost_efficiency': '>=130% of current',
    'resource_utilization': '>=85%'
}
```

## Common Operations

### 1. Model Training
```python
# Current GCP
python train.py --distributed

# Future Databricks
with mlflow.start_run():
    model.fit(distributed=True)
```

### 2. Inference
```python
# Current GCP
python serve.py --model large_model

# Future Databricks
serving_client.create_endpoint(
    name="large_model",
    config=serving_config
)
```

### 3. Monitoring
```python
# Current GCP
python monitor.py --cluster-status

# Future Databricks
dbutils.notebook.run("monitoring", 0)
```

## Emergency Procedures

### Quick Recovery
```bash
# GCP Recovery
./deploy_phased_cluster.py --recover

# Databricks Recovery
databricks clusters start --cluster-name backup
```

### Performance Issues
```bash
# GCP Performance Check
nvidia-smi && python check_perf.py

# Databricks Performance Check
%sh nvidia-smi
```

## Key Metrics to Watch

### Performance
- GPU Utilization (target: >85%)
- Training Throughput
- Inference Latency
- Network Bandwidth

### Cost
- Daily Burn Rate
- DBU Consumption
- Spot Instance Savings
- Storage Costs

### Operational
- Uptime (target: >99.9%)
- Recovery Time (target: <15min)
- Deployment Success Rate
- Pipeline Efficiency

## Support Contacts

### GCP Support
```
Primary: Internal Team
Escalation: GCP Enterprise Support
Response SLA: 1 hour
```

### Databricks Support
```
Primary: Databricks Technical Account Manager
Escalation: Databricks Enterprise Support
Response SLA: 30 minutes
```

## Documentation Links

### Internal Docs
- [Deployment Flow](deployment_flow.txt)
- [Cost Analysis](cost_analysis.md)
- [Architecture Comparison](architecture_comparison.txt)
- [Platform Comparison](platform_comparison.md)
- [Transition Timeline](transition_timeline.md)

### External Docs
- [Databricks Documentation](https://docs.databricks.com)
- [GCP H100 Documentation](https://cloud.google.com/compute/docs/gpus)
- [MLflow Documentation](https://mlflow.org/docs/latest/index.html)

## Next Steps Checklist

Pre-Transition:
- [ ] Complete performance baseline
- [ ] Document current workflows
- [ ] Prepare team training

Week 1:
- [ ] Setup Databricks workspace
- [ ] Configure initial clusters
- [ ] Begin parallel testing

Week 2:
- [ ] Start data migration
- [ ] Convert pipelines
- [ ] Validate performance

Week 3-4:
- [ ] Begin hybrid operation
- [ ] Optimize resource usage
- [ ] Monitor and adjust

## Notes

1. Always maintain GCP as fallback
2. Test thoroughly before migration
3. Monitor costs daily
4. Keep team updated on progress
5. Document all decisions
