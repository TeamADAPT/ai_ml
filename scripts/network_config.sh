#!/bin/bash

# Network optimization script for H100 cluster
# This script configures optimal network settings for high-throughput ML workloads

configure_network() {
    local INSTANCE=$1
    local ZONE=$2

    echo "Configuring network settings for $INSTANCE in zone $ZONE..."
    
    # Commands to run on the instance
    gcloud compute ssh $INSTANCE --zone=$ZONE --command='sudo bash -s' << 'EOF'
        # Set optimal MTU for GCP Shared VPC
        ip link set dev ens4 mtu 8896

        # Enable Jumbo Frames
        sysctl -w net.core.rmem_max=67108864
        sysctl -w net.core.wmem_max=67108864
        sysctl -w net.ipv4.tcp_rmem="4096 87380 33554432"
        sysctl -w net.ipv4.tcp_wmem="4096 87380 33554432"

        # Optimize TCP settings for high-throughput
        sysctl -w net.core.netdev_max_backlog=250000
        sysctl -w net.ipv4.tcp_no_metrics_save=1
        sysctl -w net.ipv4.tcp_mtu_probing=1
        sysctl -w net.ipv4.tcp_timestamps=1
        sysctl -w net.ipv4.tcp_sack=1
        sysctl -w net.ipv4.tcp_window_scaling=1

        # Optimize for RDMA and GPUDirect
        sysctl -w net.core.somaxconn=65535
        sysctl -w net.ipv4.tcp_max_syn_backlog=65535
        sysctl -w net.ipv4.tcp_syncookies=1

        # Set optimal interrupt handling for NICs
        for i in $(ls -d /proc/irq/*/smp_affinity); do
            echo "f" > $i
        done

        # Enable TCP BBR congestion control
        sysctl -w net.core.default_qdisc=fq
        sysctl -w net.ipv4.tcp_congestion_control=bbr

        # Make settings persistent
        cat > /etc/sysctl.d/99-network-tuning.conf << 'EOC'
net.core.rmem_max=67108864
net.core.wmem_max=67108864
net.ipv4.tcp_rmem=4096 87380 33554432
net.ipv4.tcp_wmem=4096 87380 33554432
net.core.netdev_max_backlog=250000
net.ipv4.tcp_no_metrics_save=1
net.ipv4.tcp_mtu_probing=1
net.ipv4.tcp_timestamps=1
net.ipv4.tcp_sack=1
net.ipv4.tcp_window_scaling=1
net.core.somaxconn=65535
net.ipv4.tcp_max_syn_backlog=65535
net.ipv4.tcp_syncookies=1
net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr
EOC

        # Configure NUMA settings for optimal NIC-GPU affinity
        for gpu in $(nvidia-smi --query-gpu=gpu_uuid --format=csv,noheader); do
            nvidia-smi topo -m | grep $gpu
        done

        # Enable GPUDirect RDMA
        if [ -f /usr/local/cuda/include/cuda.h ]; then
            echo "CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7" >> /etc/environment
            echo "NCCL_NET_GDR_LEVEL=5" >> /etc/environment
            echo "NCCL_P2P_LEVEL=5" >> /etc/environment
            echo "NCCL_IB_HCA=mlx5" >> /etc/environment
            echo "NCCL_DEBUG=INFO" >> /etc/environment
        fi

        # Apply all changes
        sysctl -p /etc/sysctl.d/99-network-tuning.conf

        # Verify settings
        echo "Current MTU settings:"
        ip link show | grep mtu
        echo "Current sysctl settings:"
        sysctl -a | grep -E "rmem|wmem|backlog|tcp"
EOF
}

# Configure network settings for each instance
configure_network "gpu-primary" "us-central1-a"
configure_network "gpu-backup" "us-east4-c"

# Configure network settings for download nodes
for i in {0..3}; do
    configure_network "dl-node-$i" "${ZONES[i]}"
done

echo "Network configuration completed."
