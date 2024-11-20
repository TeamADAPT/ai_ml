Linux Windows

___

This document explains how to create a VM that uses an [accelerator-optimized machine family](https://cloud.google.com/compute/docs/accelerator-optimized-machines). The accelerator-optimized machine family is available in A3, A2, and G2 machine types.

Each accelerator-optimized machine type has a specific model of NVIDIA GPUs attached.

-   [For A3 accelerator-optimized machine types](https://cloud.google.com/compute/docs/accelerator-optimized-machines#a3-vms), NVIDIA H100 80GB GPUs are attached. These are available in the following options:
    -   _A3 Mega_: these machine types have H100 80GB GPUs attached
    -   _A3 High_: these machine types have H100 80GB GPUs attached
    -   _A3 Edge_: these machine types have H100 80GB GPUs attached
-   [For A2 accelerator-optimized machine types](https://cloud.google.com/compute/docs/accelerator-optimized-machines#a2-vms), NVIDIA A100 GPUs are attached. These are available in the following options:
    -   _A2 Ultra_: these machine types have A100 80GB GPUs attached
    -   _A2 Standard_: these machine types have A100 40GB GPUs attached
-   [For G2 accelerator-optimized machine types](https://cloud.google.com/compute/docs/accelerator-optimized-machines#g2-vms), NVIDIA L4 GPUs are attached.

## Before you begin

-   To review additional prerequisite steps such as selecting an OS image and checking GPU quota, review the [overview](https://cloud.google.com/compute/docs/gpus/create-vm-with-gpus) document.
-   If you haven't already, then set up authentication. [Authentication](https://cloud.google.com/compute/docs/authentication) is the process by which your identity is verified for access to Google Cloud services and APIs. To run code or samples from a local development environment, you can authenticate to Compute Engine by selecting one of the following options:
    
    Select the tab for how you plan to use the samples on this page:
    
    [Console](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#console)[gcloud](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#gcloud)[REST](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#rest)
    
    1.  [Install](https://cloud.google.com/sdk/docs/install) the Google Cloud CLI, then [initialize](https://cloud.google.com/sdk/docs/initializing) it by running the following command:
        
        ```
        <span>gcloud init</span>
        ```
        
    2.  [Set a default region and zone](https://cloud.google.com/compute/docs/gcloud-compute#set_default_zone_and_region_in_your_local_client).
    

### Required roles

To get the permissions that you need to create VMs, ask your administrator to grant you the [Compute Instance Admin (v1)](https://cloud.google.com/iam/docs/understanding-roles#compute.instanceAdmin.v1) (`roles/compute.instanceAdmin.v1`) IAM role on the project. For more information about granting roles, see [Manage access to projects, folders, and organizations](https://cloud.google.com/iam/docs/granting-changing-revoking-access).

This predefined role contains the permissions required to create VMs. To see the exact permissions that are required, expand the **Required permissions** section:

#### Required permissions

You might also be able to get these permissions with [custom roles](https://cloud.google.com/iam/docs/creating-custom-roles) or other [predefined roles](https://cloud.google.com/iam/docs/understanding-roles).

## Create a VM that has attached GPUs

You can create an A3, A2, or G2 accelerator-optimized VM by using the Google Cloud console, Google Cloud CLI, or REST.

To make some customizations to your G2 VMs, you might need to use the Google Cloud CLI or REST. See [G2 limitations](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#limitations).

[Console](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#console) [gcloud](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#gcloud) [REST](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#rest)

To create and start a VM, use the [`gcloud compute instances create` command](https://cloud.google.com/sdk/gcloud/reference/compute/instances/create) with the following flags. VMs with GPUs can't live migrate, make sure that you set the `--maintenance-policy=TERMINATE` flag.

The following optional flags are shown in the sample command:

-   The `--provisioning-model=SPOT` flag which configures your VMs as Spot VMs. If your workload is fault-tolerant and can withstand possible VM preemption, consider using Spot VMs to reduce the cost of your VMs and the attached GPUs. For more information, see [GPUs on Spot VMs](https://cloud.google.com/compute/docs/instances/spot#spot-with-gpu). For Spot VMs, the automatic restart and host maintenance options flags are disabled.
-   The `--accelerator` flag to specify a virtual workstation. NVIDIA RTX Virtual Workstations (vWS) are supported for only G2 VMs.

  ```
  gcloud compute instances create <devsite-var rendered="" translate="no" is-upgraded="" scope="VM_NAME" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit VM_NAME" aria-label="Edit VM_NAME">VM_NAME</var></span></devsite-var> \
      --machine-type=<devsite-var rendered="" translate="no" is-upgraded="" scope="MACHINE_TYPE" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit MACHINE_TYPE" aria-label="Edit MACHINE_TYPE">MACHINE_TYPE</var></span></devsite-var> \
      --zone=<devsite-var rendered="" translate="no" is-upgraded="" scope="ZONE" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit ZONE" aria-label="Edit ZONE">ZONE</var></span></devsite-var> \
      --boot-disk-size=<devsite-var rendered="" translate="no" is-upgraded="" scope="DISK_SIZE" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit DISK_SIZE" aria-label="Edit DISK_SIZE">DISK_SIZE</var></span></devsite-var> \
      --image=<devsite-var rendered="" translate="no" is-upgraded="" scope="IMAGE" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit IMAGE" aria-label="Edit IMAGE">IMAGE</var></span></devsite-var> \
      --image-project=<devsite-var rendered="" translate="no" is-upgraded="" scope="IMAGE_PROJECT" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit IMAGE_PROJECT" aria-label="Edit IMAGE_PROJECT">IMAGE_PROJECT</var></span></devsite-var> \
      --maintenance-policy=TERMINATE \
      [--provisioning-model=SPOT] \
      [--accelerator=type=nvidia-l4-vws,count=<devsite-var rendered="" translate="no" is-upgraded="" scope="VWS_ACCELERATOR_COUNT" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit VWS_ACCELERATOR_COUNT" aria-label="Edit VWS_ACCELERATOR_COUNT">VWS_ACCELERATOR_COUNT</var></span></devsite-var>]
  
```
  Replace the following:

-   `VM_NAME`: the [name](https://cloud.google.com/compute/docs/naming-resources#resource-name-format) for the new VM.
-   `MACHINE_TYPE` : the machine type that you selected. Choose from one of the following:
    -   An [A3 machine type](https://cloud.google.com/compute/docs/gpus#h100-gpus).
    -   An [A2 machine type](https://cloud.google.com/compute/docs/gpus#a100-gpus).
    -   A [G2 machine type](https://cloud.google.com/compute/docs/gpus#l4-gpus). G2 machine types also support custom memory. Memory must be a multiple of 1024 MB and within the supported memory range. For example, to create a VM with 4 vCPUs and 19 GB of memory specify `--machine-type=g2-custom-4-19456`.
-   `ZONE`: the zone for the VM. This zone must support [your selected GPU model](https://cloud.google.com/compute/docs/gpus/gpu-regions-zones).
-   `DISK_SIZE`: the size of your boot disk in GB. Specify a boot disk size of at least 40 GB.
-   `IMAGE`: an operating system image [that supports GPUs](https://cloud.google.com/compute/docs/images/os-details#gpu-support). If you want to use the latest image in an [image family](https://cloud.google.com/compute/docs/images#image_families), replace the `--image` flag with the `--image-family` flag and set its value to an image family that supports GPUs. For example: `--image-family=rocky-linux-8-optimized-gcp`.  
    You can also specify a custom image or [Deep Learning VM Images](https://cloud.google.com/deep-learning-vm/docs/images).
-   `IMAGE_PROJECT`: the Compute Engine [image project](https://cloud.google.com/compute/docs/images/os-details#general-info) that the OS image belongs to. If using a custom image or Deep Learning VM Images, specify the project that those images belong to.
-   `VWS_ACCELERATOR_COUNT`: the number of virtual GPUs that you need.

### Limitations

[A3 VMs](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#a3-vms) [A2 Standard VMs](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#a2-standard-vms) [A2 Ultra VMs](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#a2-ultra-vms) [G2 VMs](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#g2-vms)

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

## Install drivers

For the VM to use the GPU, you need to [Install the GPU driver on your VM](https://cloud.google.com/compute/docs/gpus/install-drivers-gpu).

## Examples

In these examples, most of the VMs are created by using the Google Cloud CLI. However, you can also use either the [Google Cloud console](https://console.cloud.google.com/) or [REST](https://cloud.google.com/compute/docs/reference/latest/instances) to create these VMs.

The following examples show how to create VMs using the following images:

-   [Deep Learning VM Images](https://cloud.google.com/deep-learning-vm/docs/images). This example uses the A2 Standard (`a2-highgpu-1g`) VM.
-   [Container-optimized (COS) image](https://cloud.google.com/container-optimized-os/docs/how-to/run-gpus). This example uses either an `a3-highgpu-8g` or `a3-edgegpu-8g` VM.
-   [Public image](https://cloud.google.com/compute/docs/images). This example uses a G2 VM.
    

[COS (A3 Edge/High)](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#cos-a3-edgehigh) [Public OS image (G2)](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#public-os-image-g2) [DLVM image (A2)](https://cloud.google.com/compute/docs/gpus/create-gpu-vm-accelerator-optimized#dlvm-image-a2)

You can create either `a3-edgegpu-8g` or `a3-highgpu-8g` VMs that have attached H100 GPUs by using [Container-optimized (COS) images](https://cloud.google.com/compute/docs/images/os-details#container-optimized_os_cos).

For detailed instructions on how to create these `a3-edgegpu-8g` or `a3-highgpu-8g`VMs that use Container-Optimized OS, see [Create an A3 VM with GPUDirect-TCPX enabled](https://cloud.google.com/compute/docs/gpus/gpudirect).

## Multi-Instance GPU (A3 and A2 VMs only)

A [Multi-Instance GPU](https://www.nvidia.com/en-us/technologies/multi-instance-gpu/) partitions a single NVIDIA H100 or A100 GPU within the same VM into as many as seven independent GPU instances. They run simultaneously, each with its own memory, cache and streaming multiprocessors. This setup enables the NVIDIA H100 or A100 GPU to deliver guaranteed quality-of-service (QoS) at up to 7x higher utilization compared to earlier GPU models.

You can create up to seven Multi-instance GPUs. For A100 40GB GPUs, each Multi-instance GPU is allocated 5 GB of memory. With the A100 80GB and H100 80GB GPUs the allocated memory doubles to 10 GB each.

For more information about using Multi-Instance GPUs, see [NVIDIA Multi-Instance GPU User Guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/).

To create Multi-Instance GPUs, complete the following steps:

1.  Create an A3 or A2 accelerator-optimized VM.
    
2.  Enable [NVIDIA GPU drivers](https://cloud.google.com/compute/docs/gpus/install-drivers-gpu).
    
3.  Enable Multi-Instance GPUs..
    
    ```
    sudo nvidia-smi -mig 1
    ```
    
4.  Review the Multi-Instance GPU shapes that are available.
    
    ```
    sudo nvidia-smi mig --list-gpu-instance-profiles
    ```
    
    The output is similar to the following:
    
    ```
    +-----------------------------------------------------------------------------+
    | GPU instance profiles:                                                      |
    | GPU   Name             ID    Instances   Memory     P2P    SM    DEC   ENC  |
    |                              Free/Total   GiB              CE    JPEG  OFA  |
    |=============================================================================|
    |   0  MIG 1g.10gb       19     7/7        9.62       No     16     1     0   |
    |                                                             1     1     0   |
    +-----------------------------------------------------------------------------+
    |   0  MIG 1g.10gb+me    20     1/1        9.62       No     16     1     0   |
    |                                                             1     1     1   |
    +-----------------------------------------------------------------------------+
    |   0  MIG 1g.20gb       15     4/4        19.50      No     26     1     0   |
    |                                                             1     1     0   |
    +-----------------------------------------------------------------------------+
    |   0  MIG 2g.20gb       14     3/3        19.50      No     32     2     0   |
    |                                                             2     2     0   |
    +-----------------------------------------------------------------------------+
    |   0  MIG 3g.40gb        9     2/2        39.25      No     60     3     0   |
    |                                                             3     3     0   |
    +-----------------------------------------------------------------------------+
    .......
    ```
    
5.  Create the Multi-Instance GPU (GI) and associated compute instances (CI) that you want. You can create these instances by specifying either the full or shortened profile name, profile ID, or a combination of both. For more information, see [Creating GPU Instances](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/index.html#create-gi).
    
    The following example creates two `MIG 3g.20gb` GPU instances by using the profile ID (`9`).
    
    The `-C` flag is also specified which creates the associated compute instances for the required profile.
    
    ```
    sudo nvidia-smi mig -cgi 9,9 -C
    ```
    
6.  Check that the two Multi-Instance GPUs are created:
    
    ```
    sudo nvidia-smi mig -lgi
    ```
    
7.  Check that both the GIs and corresponding CIs are created.
    
    ```
    sudo nvidia-smi
    ```
    
    The output is similar to the following:
    
    ```
    +-----------------------------------------------------------------------------+
    | NVIDIA-SMI 525.125.06   Driver Version: 525.125.06   CUDA Version: 12.0     |
    |-------------------------------+----------------------+----------------------+
    | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
    | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
    |                               |                      |               MIG M. |
    |===============================+======================+======================|
    |   0  NVIDIA H100 80G...  Off  | 00000000:04:00.0 Off |                   On |
    | N/A   33C    P0    70W / 700W |     39MiB / 81559MiB |     N/A      Default |
    |                               |                      |              Enabled |
    +-------------------------------+----------------------+----------------------+
    |   1  NVIDIA H100 80G...  Off  | 00000000:05:00.0 Off |                   On |
    | N/A   32C    P0    69W / 700W |     39MiB / 81559MiB |     N/A      Default |
    |                               |                      |              Enabled |
    +-------------------------------+----------------------+----------------------+
    ......
    
    +-----------------------------------------------------------------------------+
    | MIG devices:                                                                |
    +------------------+----------------------+-----------+-----------------------+
    | GPU  GI  CI  MIG |         Memory-Usage |        Vol|         Shared        |
    |      ID  ID  Dev |           BAR1-Usage | SM     Unc| CE  ENC  DEC  OFA  JPG|
    |                  |                      |        ECC|                       |
    |==================+======================+===========+=======================|
    |  0    1   0   0  |     19MiB / 40192MiB | 60      0 |  3   0    3    0    3 |
    |                  |      0MiB / 65535MiB |           |                       |
    +------------------+----------------------+-----------+-----------------------+
    |  0    2   0   1  |     19MiB / 40192MiB | 60      0 |  3   0    3    0    3 |
    |                  |      0MiB / 65535MiB |           |                       |
    +------------------+----------------------+-----------+-----------------------+
    ......
    
    +-----------------------------------------------------------------------------+
    | Processes:                                                                  |
    |  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
    |        ID   ID                                                   Usage      |
    |=============================================================================|
    |  No running processes found                                                 |
    +-----------------------------------------------------------------------------+
    ```
    

## What's next?

-   Learn more about [GPU platforms](https://cloud.google.com/compute/docs/gpus).
-   [Add Local SSDs to your instances](https://cloud.google.com/compute/docs/disks/local-ssd). Local SSD devices pair well with GPUs when your apps require high-performance storage.
-   [Install the GPU drivers](https://cloud.google.com/compute/docs/gpus/install-drivers-gpu).
-   If you enabled an NVIDIA RTX virtual workstation, [install a driver for the virtual workstation](https://cloud.google.com/compute/docs/gpus/install-grid-drivers).
-   To handle GPU host maintenance, see [Handling GPU host maintenance events](https://cloud.google.com/compute/docs/gpus/gpu-host-maintenance).