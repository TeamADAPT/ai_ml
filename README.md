# ADAPT AI/ML Infrastructure

Tools and documentation for managing GPU infrastructure on Google Cloud Platform, with a focus on H100 and A100 deployments.

## Project Structure

```
ai_ml/
├── docs/
│   ├── guides/     # General documentation
│   └── quotas/     # Quota request templates
├── src/
│   ├── tools/      # Utility scripts
│   ├── deploy/     # Deployment scripts
│   ├── config/     # Configuration files
│   └── k8s/        # Kubernetes manifests
├── scripts/        # Setup and maintenance scripts
└── tests/          # Test files
```

## Quick Start

1. Setup Environment
```bash
./scripts/setup.sh
```

2. Configure GCP Project
```bash
# Set environment variables
source .env

# Check GPU quotas
python src/tools/check_h100_availability.py
```

3. Deploy Infrastructure
```bash
# Deploy GKE cluster
python src/deploy/deploy_gke_gpu.py

# Apply Kubernetes manifests
python src/deploy/apply_k8s_manifests.py
```

## Features

- H100/A100 GPU infrastructure management
- GKE cluster deployment and configuration
- Kubernetes workload management
- Quota tracking and monitoring
- Infrastructure cost optimization

## Documentation

- [GKE Deployment Guide](docs/guides/gke_gpu_deployment.md)
- [Quota Management](docs/guides/quota_management.md)
- [Best Practices](docs/guides/best_practices.md)
- [Troubleshooting](docs/guides/troubleshooting.md)

## Development

### Requirements
- Python 3.9+
- gcloud CLI
- kubectl
- Dependencies in requirements.txt

### Setup Development Environment
```bash
# Create virtual environment
python -m venv aiml_env
source aiml_env/bin/activate

# Install dependencies
pip install -r requirements.txt
```

### Running Tests
```bash
pytest tests/
```

## Contributing

1. Create feature branch from develop
2. Make changes
3. Run tests
4. Submit pull request

## License

Copyright (c) 2024 ADAPT
All rights reserved.
