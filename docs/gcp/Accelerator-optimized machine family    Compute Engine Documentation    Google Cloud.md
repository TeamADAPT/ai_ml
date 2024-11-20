___

The accelerator-optimized machine family is designed by Google Cloud to deliver the needed performance and efficiency for GPU accelerated workloads such as artificial intelligence (AI), machine learning (ML), and high performance computing (HPC).

The accelerator-optimized machine family is available in the following machine series: A3, A2 and G2. Each machine type within a series has a specific model and number of NVIDIA GPUs attached. You can also [attach some GPU models](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-general-purpose#overview) to N1 general-purpose machine types.

## Machine series recommendation by workload type

The following section provide the recommended machine series based on your GPU workloads.

### Large AI models

| Workload type | Best fit | Good alternative |
| --- | --- | --- |
| Multiple (distributed) server training | A3 Mega | A3 High, A2 |
| Inference | A3 High, A3 Edge | A2 |

To provision clusters for running large-scale model and training, see [Run large-scale model training and fine-tuning](https://cloud.google.com/compute/docs/gpus/overview#large-scale-ai).

### Mainstream models

| Workload type | Best fit | Good alternative (in recommended order) |
| --- | --- | --- |
| Multiple (distributed) server training | A3 Mega, A3 High | 
-   A2
-   G2
-   N1+V100

 |
| Single server training | A3 High, A3 Edge | 

-   A2
-   G2
-   N1+V100

 |
| Inference | A3 Edge, G2 | 

-   N1+T4
-   N1+V100

 |

To provision clusters for running mainstream models, see [Run mainstream model training and fine-tuning](https://cloud.google.com/compute/docs/gpus/overview#mainstream-model).

### Graphics-intensive workloads

| Workload type | Best fit (in recommended order) |
| --- | --- |
| Video streaming and transcoding, remote virtual workstations, digital twins | 
-   G2
-   N1+T4

 |

To provision VMs for graphics-intensive workloads, review [these options](https://cloud.google.com/compute/docs/gpus/overview#compute-engine).

### High performance computing

For high performance computing workloads, any accelerator-optimized machine series works well. The best fit depends on the amount of computation that must be offloaded to the GPU.

## Pricing and discount

All accelerator-optimized machine types support the following discount and consumption options:

-   [Resource-based committed use discounts (CUDs)](https://cloud.google.com/compute/docs/instances/committed-use-discounts-overview#resource_based)
-   [Spot VMs](https://cloud.google.com/compute/docs/instances/spot)
-   [Reservations](https://cloud.google.com/compute/docs/instances/reservations-overview)

The accelerator-optimized machine types are billed for their attached GPUs, predefined vCPU, memory, and bundled Local SSD (if applicable). For more pricing information for accelerator-optimized VMs, see [Accelerator-optimized machine type family](https://cloud.google.com/compute/vm-instance-pricing#accelerator-optimized) section on the VM instance pricing page.

## The A3 machine series

The A3 machine series has 208 vCPUs, and 1,872 GB of memory. This machine series is optimized for compute and memory intensive, network bound ML training, and HPC workloads.

The A3 machine series also provides the following features:

-   **Next generation hardware**: each A3 machine type has [NVIDIA H100 SXM GPUs](https://www.nvidia.com/en-us/data-center/h100/) attached, which offers 80GB GPU memory per GPU and is ideal for large transformer-based language models, databases, and HPC.
    
    This machine series is built on the 4th Generation Intel Xeon Scalable processor (Sapphire Rapids) and offers up to 3.3 GHz sustained single-core max turbo frequency.
    
-   **Industry-leading NVLink scale**: NVIDIA H100 GPUs provide peak [GPU NVLink bandwidth](https://www.nvidia.com/en-us/design-visualization/nvlink-bridges/) of 450 GB/s, unidirectionally. With all-to-all NVLink topology between 8 GPUs in a system, the aggregate NVLink Bandwidth is up to 7.2 TB/s. These GPUs can be used as a single high performance accelerator with unified memory space to deliver up to 25 petaFLOPS of AI/DL/ML compute power and up to 50 petaFLOPS of inference compute power.
    
-   **Improved computing speed and networking**: NVIDIA H100 GPUs offer up to 2.5X improvement in computing speed compared NVIDIA A100 GPUs. The `a3-highgpu-8g` machine type provides 10x network bandwidth when compared to previous generation A2 machine types. The `a3-megagpu-8g` machine type provides 2x network bandwidth when compared to `a3-highgpu-8g` and 20x network bandwidth compared to A2 machine types.
    
    -   **Single NIC A3 VMs**: For A3 VMs with 1 to 4 GPUs attached, only a single physical network interface card (NIC) is available.
    -   **Multi-NIC A3 VMs**: For A3 VMs with 8 GPUS attached, multiple physical NICs are available. For these A3 machine types the NICs are arranged as follows on a Peripheral Component Interconnect Express (PCIe) bus:
        
        -   For the _A3 Mega machine type_: a NIC arrangement of 8+1 is available. With this arrangement, 8 NICs share the same PCIe bus, and 1 NIC resides on a separate PCIe bus.
        -   For the _A3 High machine type_: a NIC arrangement of 4+1 is available. With this arrangement, 4 NICs share the same PCIe bus, and 1 NIC resides on a separate PCIe bus.
        -   _For the _A3 Edge machine type_ machine type_: a NIC arrangement of 4+1 is available. With this arrangement, 4 NICs share the same PCIe bus, and 1 NIC resides on a separate PCIe bus. These 5 NICs provide a total network bandwidth of 400 Gbps for each VM.
        
        NICs that share the same PCIe bus, have a non-uniform memory access (NUMA) alignment of one NIC per two NVIDIA H100 80GB GPUs. These NICs are ideal for dedicated high bandwidth GPU to GPU communication. The physical NIC that resides on a separate PCIe bus is ideal for other networking needs.
        
-   **Improved GPU cluster performance with GPUDirect-TCPX and GPUDirect-TCPXO**:
    
    -   For the _A3 Mega_ machine types, GPUDirect-TCPXO further improves on GPUDirect-TCPX by offloading TCP protocol processing to the SmartNIC's ACC cores. By leveraging GPUDirect-TCPXO, the `a3-megagpu-8g` machine type doubles the network bandwidth when compared to the `a3-highgpu-8g` machine type.
        
    -   _For the A3 Edge and A3 High machine types_, GPUDirect-TCPX increases the network performance by allowing data packet payloads to transfer directly from GPU memory to the network interface. By leveraging GPUDirect-TCPX, the `a3-highgpu-8g` machine type achieves much higher throughput between VMs in a cluster when compared to the A2 or G2 accelerator-optimized machine types.
        
-   **Virtualization optimizations**: The Peripheral Component Interconnect Express (PCIe) topology of A3 VMs provides more accurate locality information that workloads can use to optimize data transfers.
    
    The NVIDIA H100 GPUs also expose Function Level Reset (FLR) for graceful recovery from failures and atomic operations support for concurrency improvements in certain scenarios.
    
-   **Storage**: 6,000 GiB of Local SSD is automatically added to VMs created by using any of the A3 machine types. Local SSD can be used for fast scratch disks or for feeding data into the GPUs while preventing I/O bottlenecks.
    
    You can also attach up to 257 TiB of Persistent Disk storage to the machine types in these series for applications that require higher storage performance.
    
-   **Compact placement policy support**: provides you with more control over the physical placement of your VMs within data centers. This enables lower-latency and higher bandwidth for VM placement within a single availability zone. Compact placement policy supports up to 96 VMs in a lower-latency subset of the network, within a given zone. For more information, see [Reduce latency by using compact placement policies](https://cloud.google.com/compute/docs/instances/use-compact-placement-policies).
    

The following machine types are available for the A3 machine series.

### A3 Mega machine type

| Machine type | GPU count | GPU memory<sup>*</sup>  
(GB HBM3) | vCPU count<sup>†</sup> | VM memory (GB) | Attached Local SSD (GiB) | Physical NIC count | Maximum network bandwidth (Gbps)<sup>‡</sup> |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `a3-megagpu-8g` | 8 | 640 | 208 | 1,872 | 6,000 | 9 | 1,800 |

<sup>*</sup>GPU memory is the memory on a GPU device that can be used for temporary storage of data. It is separate from the VM's memory and is specifically designed to handle the higher bandwidth demands of your graphics-intensive workloads.  
<sup>†</sup>A vCPU is implemented as a single hardware hyper-thread on one of the available [CPU platforms](https://cloud.google.com/compute/docs/cpu-platforms).  
<sup>‡</sup>Maximum egress bandwidth cannot exceed the number given. Actual egress bandwidth depends on the destination IP address and other factors. See [Network bandwidth](https://cloud.google.com/compute/docs/network-bandwidth).

### A3 High machine type

When provisioning `a3-highgpu-1g`, `a3-highgpu-2g`, or `a3-highgpu-4g` machine types, you must either use Spot VMs or a feature that uses the [Dynamic Workload Scheduler (DWS)](https://cloud.google.com/blog/products/compute/introducing-dynamic-workload-scheduler) such as resize requests in a MIG. For detailed instructions on either of these options, review the following:

-   To create Spot VMs, see [Create an accelerator-optimized VM](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized) and remember to set the provisiong model to `SPOT`
-   To create a resize request in a MIG, which uses Dynamic Workload Scheduler, see [Create a MIG with GPU VMs](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms).

| Machine type | GPU count | GPU memory<sup>*</sup>  
(GB HBM3) | vCPU count<sup>†</sup> | VM memory (GB) | Attached Local SSD (GiB) | Physical NIC count | Maximum network bandwidth (Gbps)<sup>‡</sup> |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `a3-highgpu-1g` | 1 | 80 | 26 | 234 | 750 | 1 | 25 |
| `a3-highgpu-2g` | 2 | 160 | 52 | 468 | 1,500 | 1 | 50 |
| `a3-highgpu-4g` | 4 | 320 | 104 | 936 | 3,000 | 1 | 100 |
| `a3-highgpu-8g` | 8 | 640 | 208 | 1,872 | 6,000 | 5 | 800 |

<sup>*</sup>GPU memory is the memory on a GPU device that can be used for temporary storage of data. It is separate from the VM's memory and is specifically designed to handle the higher bandwidth demands of your graphics-intensive workloads.  
<sup>†</sup>A vCPU is implemented as a single hardware hyper-thread on one of the available [CPU platforms](https://cloud.google.com/compute/docs/cpu-platforms).  
<sup>‡</sup>Maximum egress bandwidth cannot exceed the number given. Actual egress bandwidth depends on the destination IP address and other factors. See [Network bandwidth](https://cloud.google.com/compute/docs/network-bandwidth).

### A3 Edge machine type

| Machine type | GPU count | GPU memory<sup>*</sup>  
(GB HBM3) | vCPU count<sup>†</sup> | VM memory (GB) | Attached Local SSD (GiB) | Physical NIC count | Maximum network bandwidth (Gbps)<sup>‡</sup> |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `a3-edgegpu-8g` | 8 | 640 | 208 | 1,872 | 6,000 | 5 | 
-   800: _for asia-south1 and northamerica-northeast2_
-   400: _for all other [A3 Edge regions](https://cloud.google.com/compute/docs/gpus/gpu-regions-zones#view-using-table)_

 |

<sup>*</sup>GPU memory is the memory on a GPU device that can be used for temporary storage of data. It is separate from the VM's memory and is specifically designed to handle the higher bandwidth demands of your graphics-intensive workloads.  
<sup>†</sup>A vCPU is implemented as a single hardware hyper-thread on one of the available [CPU platforms](https://cloud.google.com/compute/docs/cpu-platforms).  
<sup>‡</sup>Maximum egress bandwidth cannot exceed the number given. Actual egress bandwidth depends on the destination IP address and other factors. See [Network bandwidth](https://cloud.google.com/compute/docs/network-bandwidth).

### Supported disk types for the A3 series

A3 VMs can use the following block storage types:

-   Balanced Persistent Disk (`pd-balanced`)
-   SSD (performance) Persistent Disk (`pd-ssd`)
-   Hyperdisk Balanced (`hyperdisk-balanced`): Hyperdisk Balanced is only supported for `a3-megagpu-8g`, `a3-highgpu-8g`, and `a3-edgegpu-8g` and machine types.
-   Hyperdisk ML (`hyperdisk-ml`)
-   Hyperdisk Extreme (`hyperdisk-extreme`)
-   Hyperdisk Throughput (`hyperdisk-throughput`)
-   Local SSD: which is automatically added to VMs that are created by using the A3 machine type

[A3 Mega](https://cloud.google.com/compute/docs/accelerator-optimized-machines#a3-mega)[A3 High](https://cloud.google.com/compute/docs/accelerator-optimized-machines#a3-high)[A3 Edge](https://cloud.google.com/compute/docs/accelerator-optimized-machines#a3-edge)

| Maximum number of disks per VM<sup>*</sup> |
| --- |
| Machine  
types | All disks<sup>†</sup> | Hyperdisk Balanced | Hyperdisk Throughput | Hyperdisk ML | Hyperdisk Extreme | Attached  
Local SSD  
disks |
| --- | --- | --- | --- | --- | --- | --- |
| `a3-megagpu-8g` | 128 | 32 | 64 | 64 | 8 | 16 |

<sup>*</sup>Hyperdisk and Persistent Disk usage are charged separately from [machine type pricing](https://cloud.google.com/compute/vm-instance-pricing). For disk pricing, see [Persistent Disk and Hyperdisk pricing](https://cloud.google.com/compute/disks-image-pricing#persistentdisk).  
<sup>†</sup>This limit applies to Persistent Disk and Hyperdisk, but doesn't include Local SSD disks.

#### Disk and capacity limits

You can use a mixture of Persistent Disk and Hyperdisk volumes with a VM, but the following restrictions apply:

-   The combined number of both Hyperdisk and Persistent Disk volumes can't exceed 128 per VM.
-   The maximum total disk capacity (in TiB) across all disk types can't exceed:
    
    -   For machine types with less than 32 vCPUs:
        
        -   257 TiB for all Hyperdisk or all Persistent Disk
        -   257 TiB for a mixture of Hyperdisk and Persistent Disk
    -   For machine types with 32 or more vCPUs:
        
        -   512 TiB for all Hyperdisk
        -   512 TiB for a mixture of Hyperdisk and Persistent Disk
        -   257 TiB for all Persistent Disk

For details about the capacity limits, see [Hyperdisk capacity limits per VM](https://cloud.google.com/compute/docs/disks/hyperdisks#limits-instance) and [Persistent Disk maximum capacity](https://cloud.google.com/compute/docs/disks/persistent-disks#capacity_257tb).

### Networking and A3 machine series

To get the higher network bandwidth rates applied to your GPU VMs, it is recommended that you use Google Virtual NIC (gVNIC). For more information about creating GPU VMs that use gVNIC, see [Creating GPU VMs that use higher bandwidths](https://cloud.google.com/compute/docs/gpus/optimize-gpus#create-high-bandwidth-vm).

### Limitations for the A3 series

The following limitations apply to VMs that use A3 Edge, A3 High, and A3 Mega machine types:

-   You don't receive [sustained use discounts](https://cloud.google.com/compute/docs/sustained-use-discounts) and flexible committed use discounts for VMs that use A3 machine types.
-   You can only use A3 machine types in certain [regions and zones](https://cloud.google.com/compute/docs/regions-zones).
-   You can't use [regional persistent disks](https://cloud.google.com/compute/docs/disks/regional-persistent-disk) on VMs that use A3 machine types.
-   The A3 machine series is only available on the [Sapphire Rapids platform](https://cloud.google.com/compute/docs/cpu-platforms).
-   If your VM uses an A3 machine type, you can't change the machine type. If you need to change the machine type, you must create a new VM.
-   You can't change the machine type of a VM to an A3 machine type. If you need a VM that uses an A3 machine type, you must create a new VM.
-   A3 machine types don't support sole-tenancy.
-   You can't run Windows operating systems on A3 machine types.
-   You can reserve A3 machine types only through certain [reservations](https://cloud.google.com/compute/docs/instances/reservations-overview#a3-restriction).
-   For `a3-highgpu-1g`, `a3-highgpu-2g`, and`a3-highgpu-4g` machine types, the following limitations apply:
    
    -   For these machine types, you must either use Spot VMs or a feature that uses the [Dynamic Workload Scheduler (DWS)](https://cloud.google.com/blog/products/compute/introducing-dynamic-workload-scheduler) such as resize requests in a MIG. For detailed instructions on either of these options, review the following:
        -   To create Spot VMs, see [Create an accelerator-optimized VM](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized) and remember to set the provisiong model to `SPOT`
        -   To create a resize request in a MIG, which uses Dynamic Workload Scheduler, see [Create a MIG with GPU VMs](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms).
    -   You can't use Hyperdisk Balanced with these machine types.
    -   You can't create reservations.
    
    If you try to create a VM by using standard provisioning or try to create a reservation for these machine types, you'll receive an [error message](https://cloud.google.com/compute/docs/troubleshooting/troubleshooting-resource-availability#common_error_messages).

## The A2 machine series

The A2 machine series is available in A2 Standard and A2 Ultra machine types. These machine types have 12 to 96 vCPUs, and up to 1,360 GB of memory.

The A2 machine series also provides the following features:

-   **NVIDIA GPUs attached**: each A2 machine type has [NVIDIA A100 GPUs](https://www.nvidia.com/en-us/data-center/a100/). These are available in both A100 40GB and A100 80GB options.
    
-   [Industry-leading NVLink scale](https://www.nvidia.com/en-us/design-visualization/nvlink-bridges/) that provides peak GPU to GPU NVLink bandwidth of 600 GBps. For example, systems with 16 GPUs have an aggregate NVLink bandwidth of up to 9.6 TBps. These 16 GPUs can be used as a single high performance accelerator with unified memory space to deliver up to 10 petaFLOPS of compute power and up to 20 petaFLOPS of inference compute power that can be used for artificial intelligence, deep learning, and machine learning workloads.
    
-   **Improved Computing speed**: the attached NVIDIA A100 GPUs offer up to 10x improvements in computing speed when compared to previous generation NVIDIA V100 GPUs.
    
    With the A2 machine series, you can get up to 100 Gbps network bandwidth.
    
-   **Storage**: for fast scratch disks or for feeding data into the GPUs while preventing I/O bottlenecks, the A2 machine types support Local SSD as follows:
    
    -   For the A2 Standard machine types, you can add up to 3,000 GiB of Local SSD.
    -   For the A2 Ultra machine types, Local SSD is automatically attached when you create the VM.
    
    You can also attach up to 257 TiB of Persistent Disk storage to A2 VMs for applications that require this higher storage performance.
    
-   **Compact placement policy support**: provides you with more control over the physical placement of your VMs within data centers. This enables lower-latency and higher bandwidth for VM placement within a single availability zone. For more information, see [Reduce latency by using compact placement policies](https://cloud.google.com/compute/docs/instances/use-compact-placement-policies).
    

### Supported disk types for A2

A2 VMs can use the following block storage types:

-   Hyperdisk ML (`hyperdisk-ml`)
-   Balanced Persistent Disk (`pd-balanced`)
-   SSD (performance) Persistent Disk (`pd-ssd`)
-   Standard Persistent Disk (`pd-standard`)
-   Local SSD: which is automatically attached to VMs created by using the A2 Ultra machine types.

You can use a mixture of Persistent Disk and Hyperdisk volumes with a VM, but the following restrictions apply:

-   The combined number of both Hyperdisk and Persistent Disk volumes can't exceed 128 per VM.
-   The maximum total disk capacity (in TiB) across all disk types can't exceed:
    
    -   For machine types with less than 32 vCPUs:
        
        -   257 TiB for all Hyperdisk or all Persistent Disk
        -   257 TiB for a mixture of Hyperdisk and Persistent Disk
    -   For machine types with 32 or more vCPUs:
        
        -   512 TiB for all Hyperdisk
        -   512 TiB for a mixture of Hyperdisk and Persistent Disk
        -   257 TiB for all Persistent Disk

For details about the capacity limits, see [Hyperdisk capacity limits per VM](https://cloud.google.com/compute/docs/disks/hyperdisks#limits-instance) and [Persistent Disk maximum capacity](https://cloud.google.com/compute/docs/disks/persistent-disks#capacity_257tb).

### A2 Ultra machine types

These machine types have a [fixed number of A100 80GB GPUs](https://cloud.google.com/compute/docs/gpus#a100-gpus). Local SSD is automatically attached to VMs created by using the A2 Ultra machine types.

| Machine types | GPU count | vCPUs<sup>*</sup> | VM memory (GB) | Max number of Persistent Disk volumes<sup>†</sup> | Max number of Hyperdisk ML volumes per VM | Attached Local SSD (GiB) | Maximum egress bandwidth (Gbps)<sup>‡</sup> |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `a2-ultragpu-1g` | 1 | 12 | 170 | 128 | 32 | 375 | 24 |
| `a2-ultragpu-2g` | 2 | 24 | 340 | 128 | 48 | 750 | 32 |
| `a2-ultragpu-4g` | 4 | 48 | 680 | 128 | 64 | 1,500 | 50 |
| `a2-ultragpu-8g` | 8 | 96 | 1360 | 128 | 64 | 3,000 | 100 |

<sup>*</sup>A vCPU is implemented as a single hardware hyper-thread on one of the available [CPU platforms](https://cloud.google.com/compute/docs/cpu-platforms).  
<sup>†</sup>Hyperdisk and Persistent Disk usage are charged separately from [machine type pricing](https://cloud.google.com/compute/vm-instance-pricing).  
<sup>‡</sup>Maximum egress bandwidth cannot exceed the number given. Actual egress bandwidth depends on the destination IP address and other factors. See [Network bandwidth](https://cloud.google.com/compute/docs/network-bandwidth).

### A2 Ultra limitations

-   You don't receive [sustained use discounts](https://cloud.google.com/compute/docs/sustained-use-discounts) and flexible committed use discounts for VMs that use A2 Ultra machine types.
-   You can only use A2 Ultra machine types in certain [regions and zones](https://cloud.google.com/compute/docs/regions-zones).
-   You can't use [regional persistent disks](https://cloud.google.com/compute/docs/disks/regional-persistent-disk) on VMs that use A2 Ultra machine types.
-   The A2 Ultra machine type is only available on the [Cascade Lake platform](https://cloud.google.com/compute/docs/cpu-platforms).
-   If your VM uses an A2 Ultra machine type, you can't change the machine type. If you need to use a different A2 Ultra machine type, or any other machine type, you must create a new VM.
-   You can't change any other machine type to an A2 Ultra machine type. If you need a VM that uses an A2 Ultra machine type, you must create a new VM.
-   You can't do a quick format of the attached Local SSDs on Windows VMs that use A2 Ultra machine types. To format these Local SSDs, you must do a full format by using the [diskpart utility](https://docs.microsoft.com/windows-server/administration/windows-commands/diskpart) and specifying `format fs=ntfs label=tmpfs`.

### A2 Standard machine types

These machine types have a [fixed number of A100 40GB GPUs](https://cloud.google.com/compute/docs/gpus#a100-gpus).

| Machine types | GPU count | vCPUs<sup>*</sup> | VM memory (GB) | Max number of Persistent Disk volumes<sup>†</sup> | Max number of Hyperdisk ML volumes per VM | Local SSD supported | Maximum egress bandwidth (Gbps)<sup>‡</sup> |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `a2-highgpu-1g` | 1 | 12 | 85 | 128 | 32 | Yes | 24 |
| `a2-highgpu-2g` | 2 | 24 | 170 | 128 | 48 | Yes | 32 |
| `a2-highgpu-4g` | 4 | 48 | 340 | 128 | 64 | Yes | 50 |
| `a2-highgpu-8g` | 8 | 96 | 680 | 128 | 64 | Yes | 100 |
| `a2-megagpu-16g` | 16 | 96 | 1,360 | 128 | 64 | Yes | 100 |

<sup>*</sup>A vCPU is implemented as a single hardware hyper-thread on one of the available [CPU platforms](https://cloud.google.com/compute/docs/cpu-platforms).  
<sup>†</sup>Hyperdisk and Persistent Disk usage are charged separately from [machine type pricing](https://cloud.google.com/compute/vm-instance-pricing).  
<sup>‡</sup>Maximum egress bandwidth cannot exceed the number given. Actual egress bandwidth depends on the destination IP address and other factors. See [Network bandwidth](https://cloud.google.com/compute/docs/network-bandwidth).

### A2 Standard limitations

-   You don't receive [sustained use discounts](https://cloud.google.com/compute/docs/sustained-use-discounts) and flexible committed use discounts for VMs that use A2 Standard machine types.
-   You can only use A2 Standard machine types in certain [regions and zones](https://cloud.google.com/compute/docs/regions-zones).
-   You can't use [regional persistent disks](https://cloud.google.com/compute/docs/disks/regional-persistent-disk) on VMs that use A2 Standard machine types.
-   The A2 Standard machine type is only available on the [Cascade Lake platform](https://cloud.google.com/compute/docs/cpu-platforms).
-   If your VM uses an A2 Standard machine type, you can only switch from one A2 Standard machine type to another A2 Standard machine type. You can't change to any other machine type. For more information, see [Modify accelerator-optmized VMs](https://cloud.google.com/compute/docs/gpus/add-remove-gpus#accelerator-optimized_vms).
-   You can't use the Windows operating system with A2 Standard machine types. When using Windows operating systems, choose a different A2 Standard machine type.
-   You can't do a quick format of the attached Local SSDs on Windows VMs that use A2 Standard machine types. To format these Local SSDs, you must do a full format by using the [diskpart utility](https://docs.microsoft.com/windows-server/administration/windows-commands/diskpart) and specifying `format fs=ntfs label=tmpfs`.
-   A2 Standard machine types don't support sole-tenancy.

## The G2 machine series

The G2 machine series is available in standard machine types that have 4 to 96 vCPUs, and up to 432 GB of memory. This machine series is optimized for inference and graphics workloads.

The G2 machine series also provides the following features:

-   **NVIDIA GPUs attached**: each G2 machine type has [NVIDIA L4 GPUs](https://www.nvidia.com/en-us/data-center/l4/).
    
-   **Improved inference rates**: the G2 machine types provide support for the [FP8 (8-bit floating point)](https://docs.nvidia.com/deeplearning/transformer-engine/user-guide/examples/fp8_primer.html) data type which speeds up ML inference rates and reduces memory requirements.
    
-   **Next generation graphics performance**: NVIDIA L4 GPUs provide up to 3X improvement in graphics performance by using third-generation [RT cores](https://www.nvidia.com/en-us/geforce/ada-lovelace-architecture/#rt-cores) and [NVIDIA DLSS 3 (Deep Learning Super Sampling)](https://www.nvidia.com/en-us/geforce/technologies/dlss/) technology.
    
-   **High performance network bandwidth**: with the G2 machine series, you can get up to 100 Gbps network bandwidth.
    
-   **Storage**: you can add up to 3,000 GiB of Local SSD to G2 VMs. This can be used for fast scratch disks or for feeding data into the GPUs while preventing I/O bottlenecks.
    
    You can also attach Hyperdisk and Persistent Disk volumes to G2 VMs, for applications that require more persistent storage. The maximum storage capacity depends on the number of vCPUs the VM has. For details, see [Supported disk types](https://cloud.google.com/compute/docs/accelerator-optimized-machines#g2-disks).
    
-   **Compact placement policy support**: provides you with more control over the physical placement of your VMs within data centers. This enables lower-latency and higher bandwidth for VM placement within a single availability zone. For more information, see [Reduce latency by using compact placement policies](https://cloud.google.com/compute/docs/instances/use-compact-placement-policies).
    

### Supported disk types for G2

G2 VMs can use the following block storage types:

-   Balanced Persistent Disk (`pd-balanced`)
-   SSD (performance) Persistent Disk (`pd-ssd`)
-   Hyperdisk ML (`hyperdisk-ml`)
-   Hyperdisk Throughput (`hyperdisk-throughput`)
-   Local SSD

You can use a mixture of Persistent Disk and Hyperdisk volumes with a VM, but the following restrictions apply:

-   The combined number of both Hyperdisk and Persistent Disk volumes can't exceed 128 per VM.
-   The maximum total disk capacity (in TiB) across all disk types can't exceed:
    
    -   For machine types with less than 32 vCPUs:
        
        -   257 TiB for all Hyperdisk or all Persistent Disk
        -   257 TiB for a mixture of Hyperdisk and Persistent Disk
    -   For machine types with 32 or more vCPUs:
        
        -   512 TiB for all Hyperdisk
        -   512 TiB for a mixture of Hyperdisk and Persistent Disk
        -   257 TiB for all Persistent Disk

For details about the capacity limits, see [Hyperdisk capacity limits per VM](https://cloud.google.com/compute/docs/disks/hyperdisks#limits-instance) and [Persistent Disk maximum capacity](https://cloud.google.com/compute/docs/disks/persistent-disks#capacity_257tb).

### G2 machine types

Each G2 machine type has a fixed number of [NVIDIA L4 GPUs](https://cloud.google.com/compute/docs/gpus#l4-gpus) and vCPUs attached. Each G2 machine type also has a default memory and a custom memory range. The custom memory range defines the amount of memory that you can allocate to your VM for each machine type. You can specify your custom memory during VM creation.

| Machine types | GPU count | vCPUs<sup>*</sup> | Default VM memory (GB) | Custom VM memory range (GB) | Max number of disks per VM,  
across all disks<sup>#</sup> | Max total Hyperdisk  
volumes per VM | Max Local SSD supported (GiB) | Maximum egress bandwidth (Gbps)<sup>‡</sup> |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `g2-standard-4` | 1 | 4 | 16 | 16 to 32 | 128 | 24 | 375 | 10 |
| `g2-standard-8` | 1 | 8 | 32 | 32 to 54 | 128 | 32 | 375 | 16 |
| `g2-standard-12` | 1 | 12 | 48 | 48 to 54 | 128 | 32 | 375 | 16 |
| `g2-standard-16` | 1 | 16 | 64 | 54 to 64 | 128 | 48 | 375 | 32 |
| `g2-standard-24` | 2 | 24 | 96 | 96 to 108 | 128 | 64 | 750 | 32 |
| `g2-standard-32` | 1 | 32 | 128 | 96 to 128 | 128 | 64 | 375 | 32 |
| `g2-standard-48` | 4 | 48 | 192 | 192 to 216 | 128 | 64 | 1,500 | 50 |
| `g2-standard-96` | 8 | 96 | 384 | 384 to 432 | 128 | 64 | 3,000 | 100 |

<sup>*</sup>A vCPU is implemented as a single hardware hyper-thread on one of the available [CPU platforms](https://cloud.google.com/compute/docs/cpu-platforms).  
<sup>†</sup>Hyperdisk and Persistent Disk usage are charged separately from [machine type pricing](https://cloud.google.com/compute/vm-instance-pricing).  
<sup>‡</sup>Maximum egress bandwidth cannot exceed the number given. Actual egress bandwidth depends on the destination IP address and other factors. See [Network bandwidth](https://cloud.google.com/compute/docs/network-bandwidth).

### G2 limitations

-   You don't receive [sustained use discounts](https://cloud.google.com/compute/docs/sustained-use-discounts) and flexible committed use discounts for VMs that use G2 machine types.
-   You can only use G2 machine types in certain [regions and zones](https://cloud.google.com/compute/docs/regions-zones).
-   You can't use [regional persistent disks](https://cloud.google.com/compute/docs/disks/regional-persistent-disk) on VMs that use G2 machine types.
-   The G2 machine type is only available on the [Cascade Lake platform](https://cloud.google.com/compute/docs/cpu-platforms).
-   Standard persistent disks (`pd-standard`) are not supported on VMs that use G2 standard machine types. For supported disk types, see [Supported disk types for G2](https://cloud.google.com/compute/docs/accelerator-optimized-machines#g2-disks).
-   You can't create [Multi-Instance GPUs](https://www.nvidia.com/en-us/technologies/multi-instance-gpu/) on G2 machine types.
-   If you need to change the machine type of a G2 VM, review [Modify accelerator-optmized VMs](https://cloud.google.com/compute/docs/gpus/add-remove-gpus#accelerator-optimized_vms).
-   You can't use [Deep Learning VM Images](https://cloud.google.com/deep-learning-vm/docs/images) as boot disks for your VMs that use G2 machine types.
-   The current default driver for Container-Optimized OS doesn't support L4 GPUs running on G2 machine types. Container-Optimized OS also only support a select set of drivers. If you want to use Container-Optimized OS on G2 machine types, review the following notes:
    -   Use a Container-Optimized OS version that supports the minimum recommended NVIDIA driver version `525.60.13` or later. For more information, review the [Container-Optimized OS release notes](https://cloud.google.com/container-optimized-os/docs/release-notes).
    -   When you [install the driver](https://cloud.google.com/container-optimized-os/docs/how-to/run-gpus#install-driver), specify the latest available version that works for the L4 GPUs. For example, `sudo cos-extensions install gpu -- -version=525.60.13`.
-   You must use the Google Cloud CLI or REST to [create G2 VMs](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#create-vm) for the following scenarios:
    -   You want to specify custom memory values.
    -   You want to customize the number of visible CPU cores.

## What's next

-   [Create a VM with attached GPUs](https://cloud.google.com/compute/docs/gpus/create-vm-with-gpus)
-   [GPU pricing](https://cloud.google.com/compute/gpus-pricing)
-   [VM instance pricing](https://cloud.google.com/compute/vm-instance-pricing)