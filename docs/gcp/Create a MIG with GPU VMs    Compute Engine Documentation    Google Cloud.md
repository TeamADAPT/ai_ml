___

This document describes how to create a managed instance group (MIG) with virtual machine (VM) instances that have attached GPUs. It describes how to add GPU VMs all at once in the group using [resize requests](https://cloud.google.com/compute/docs/instance-groups/about-resize-requests-mig).

Using a resize request improves obtainability of GPU VMs in a MIG. In the request, specify the number of GPU VMs and a duration for which you want to run those VMs. [Dynamic Workload Scheduler (DWS)](https://cloud.google.com/blog/products/compute/introducing-dynamic-workload-scheduler), the underlying scheduler mechanism, schedules resize requests created across Compute Engine based on requested durations and resource availability. When the resources become available, the MIG automatically creates the VMs.

If your job running on these VMs finishes earlier than the requested duration, you can delete those VMs. Otherwise, the MIG automatically deletes the VMs when the duration ends.

You can also read about other [basic scenarios for creating a MIG](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances#create_managed_group).

## Before you begin

-   To make sure that you have sufficient GPU quota for the resources you're requesting, [check your GPU quota](https://cloud.google.com/compute/resource-usage#gpu_quota).
-   To understand quota consumption, read [GPU VMs and preemptible allocation quotas](https://cloud.google.com/compute/docs/gpus/create-vm-with-gpus#preemptible-quotas).
-   If you haven't already, then set up authentication. [Authentication](https://cloud.google.com/compute/docs/authentication) is the process by which your identity is verified for access to Google Cloud services and APIs. To run code or samples from a local development environment, you can authenticate to Compute Engine by selecting one of the following options:
    
    Select the tab for how you plan to use the samples on this page:
    
    [Console](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#console)[gcloud](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#gcloud)[REST](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#rest)
    
    1.  [Install](https://cloud.google.com/sdk/docs/install) the Google Cloud CLI, then [initialize](https://cloud.google.com/sdk/docs/initializing) it by running the following command:
        
        ```
        <span>gcloud init</span>
        ```
        
    2.  [Set a default region and zone](https://cloud.google.com/compute/docs/gcloud-compute#set_default_zone_and_region_in_your_local_client).
    

## Limitations

Review the [limitations](https://cloud.google.com/compute/docs/instance-groups/about-resize-requests-mig#limitations) for creating a resize request in a MIG.

## Create a MIG and add GPU VMs all at once

To create a MIG and add GPU VMs all at once in the group, do the following:

1.  [Create an instance template](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#create-instance-template), which is required in order to create a MIG. The MIG creates each VM in the group based on the instance template. In the template, specify the configuration for GPU VMs and additional configurations required for using resize requests.
    
    For more information about instance templates, see [About instance templates](https://cloud.google.com/compute/docs/instance-templates).
    
2.  [Create a MIG and a resize request](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#create-mig-and-add-gpu-vms-all-at-once) to add GPU VMs all at once.
    

### Create an instance template

Create an instance template as described in this section, and then use the template to [create a MIG](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#create-mig-and-add-gpu-vms-all-at-once).

#### Permissions required for this task

[Console](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#console) [gcloud](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#gcloud) [REST](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#rest)

Create an instance template using the [`instance-templates create` command](https://cloud.google.com/sdk/gcloud/reference/compute/instance-templates/create).

The following command creates a global instance template based on a Deep Learning VM image.

```
gcloud compute instance-templates create <devsite-var rendered="" translate="no" is-upgraded="" scope="INSTANCE_TEMPLATE_NAME" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit INSTANCE_TEMPLATE_NAME" aria-label="Edit INSTANCE_TEMPLATE_NAME">INSTANCE_TEMPLATE_NAME</var></span></devsite-var> \
    --machine-type=<devsite-var rendered="" translate="no" is-upgraded="" scope="MACHINE_TYPE" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit MACHINE_TYPE" aria-label="Edit MACHINE_TYPE">MACHINE_TYPE</var></span></devsite-var> \
    --image-project=deeplearning-platform-release \
    --image-family=common-cu121 \
    --maintenance-policy=TERMINATE \
    --reservation-affinity=none
```

Replace the following:

-   `INSTANCE_TEMPLATE_NAME`: the name of the instance template.
-   `MACHINE_TYPE`: a machine type that [supports GPUs](https://cloud.google.com/compute/docs/gpus/about-gpus#gpu-machine-types). If you specify an N1 machine type, then include the [`--accelerator` flag](https://cloud.google.com/sdk/gcloud/reference/compute/instance-templates/create#--accelerator) to specify the number and type of GPUs to attach to your VMs.

### Create a MIG and add GPU VMs all at once

Create a MIG as described in this section. To use a resize request in the MIG, you must not configure [autoscaling](https://cloud.google.com/compute/docs/autoscaler) and must turn off [repairs](https://cloud.google.com/compute/docs/instance-groups/about-repair).

#### Permissions required for this task

[Console](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#console) [gcloud](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#gcloud) [REST](https://cloud.google.com/compute/docs/instance-groups/create-mig-with-gpu-vms#rest)

1.  Create a zonal MIG using the [`instance-groups managed create` command](https://cloud.google.com/sdk/gcloud/reference/compute/instance-groups/managed/create).
    
    ```
    gcloud compute instance-groups managed create <devsite-var rendered="" translate="no" is-upgraded="" scope="INSTANCE_GROUP_NAME" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit INSTANCE_GROUP_NAME" aria-label="Edit INSTANCE_GROUP_NAME">INSTANCE_GROUP_NAME</var></span></devsite-var> \
       --template=<devsite-var rendered="" translate="no" is-upgraded="" scope="INSTANCE_TEMPLATE_NAME" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit INSTANCE_TEMPLATE_NAME" aria-label="Edit INSTANCE_TEMPLATE_NAME">INSTANCE_TEMPLATE_NAME</var></span></devsite-var> \
       --size=0 \
       --zone=<devsite-var rendered="" translate="no" is-upgraded="" scope="ZONE" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit ZONE" aria-label="Edit ZONE">ZONE</var></span></devsite-var> \
       --default-action-on-vm-failure=do_nothing
    ```
    
2.  In the MIG, create a resize request using the [`instance-groups managed resize-requests create` command](https://cloud.google.com/sdk/gcloud/reference/compute/instance-groups/managed/resize-requests/create). Specify the number of GPU VMs that you want and the duration for which you want to run those VMs.
    
    ```
    gcloud compute instance-groups managed resize-requests create <devsite-var rendered="" translate="no" is-upgraded="" scope="INSTANCE_GROUP_NAME" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit INSTANCE_GROUP_NAME" aria-label="Edit INSTANCE_GROUP_NAME">INSTANCE_GROUP_NAME</var></span></devsite-var> \
       --resize-request=<devsite-var rendered="" translate="no" is-upgraded="" scope="RESIZE_REQUEST_NAME" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit RESIZE_REQUEST_NAME" aria-label="Edit RESIZE_REQUEST_NAME">RESIZE_REQUEST_NAME</var></span></devsite-var> \
       --resize-by=<devsite-var rendered="" translate="no" is-upgraded="" scope="COUNT" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit COUNT" aria-label="Edit COUNT">COUNT</var></span></devsite-var> \
       --requested-run-duration=<devsite-var rendered="" translate="no" is-upgraded="" scope="RUN_DURATION" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit RUN_DURATION" aria-label="Edit RUN_DURATION">RUN_DURATION</var></span></devsite-var>\
       --zone=<devsite-var rendered="" translate="no" is-upgraded="" scope="ZONE" tabindex="0"><span><var spellcheck="false" is-upgraded="" data-title="Edit ZONE" aria-label="Edit ZONE">ZONE</var></span></devsite-var>
    ```
    

Replace the following:

-   `INSTANCE_GROUP_NAME`: the name of the MIG.
-   `INSTANCE_TEMPLATE_NAME`: the name of the instance template for GPU VMs.
-   `ZONE`: one of the [zones](https://cloud.google.com/compute/docs/regions-zones) available for Compute Engine.
-   `RESIZE_REQUEST_NAME`: the name of the resize request.
-   `COUNT`: the number of VMs to add all at once in the group.
-   `RUN_DURATION`: the duration you want the requested VMs to run. The value must be formatted as the number of days, hours, minutes, or seconds followed by `d`, `h`, `m`, and `s` respectively. For example, specify `30m` for 30 minutes or `1d2h3m4s` for 1 day, 2 hours, 3 minutes, and 4 seconds. The value must be between 10 minutes and 7 days.

The resize request that you create stays in the `ACCEPTED` state until the MIG creates all the requested GPU VMs. After all GPU VMs are created in the group, the state of the request changes to `SUCCEEDED`.

## What's next

-   Learn how [resize requests work in a MIG](https://cloud.google.com/compute/docs/instance-groups/about-resize-requests-mig#how-resize-requests-work).
    
-   Learn how to [create a regional MIG that is compatible with resize requests](https://cloud.google.com/compute/docs/instance-groups/create-resize-requests-mig#create-mig) ([Preview](https://cloud.google.com/products#product-launch-stages)).
    
-   Learn how to [view, cancel, or delete resize requests in a MIG](https://cloud.google.com/compute/docs/instance-groups/manage-resize-requests-mig).
    
-   Learn how to [view info about MIGs and managed VMs](https://cloud.google.com/compute/docs/instance-groups/getting-info-about-migs).
    

-   Learn how to [view the actual and forecasted usage of your VMs and GPUs](https://cloud.google.com/capacity-planner/docs/view-data).