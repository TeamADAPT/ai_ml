May 03, 2024

Google Cloud enforces quotas on resource usage for projects to protect the community of Google Cloud users by preventing unforeseen spikes in usage. When you create a Databricks workspace, you specify a Google Cloud project, which Databricks uses to create new resources such as virtual machine instances for clusters.

Before you create a workspace, review the [Google Cloud resource quotas that Databricks requires](https://docs.gcp.databricks.com/en/admin/account-settings-gcp/quotas.html#quotas) on the Google Cloud project that you plan to use with your workspace to run clusters. You may need to request quota increases.

Note that not all projects have the same initial quotas. Initial quotas can vary based on your Google Cloud account type, the age of your Google Cloud account, and other factors. As you increasingly use Google Cloud, quotas for initial or existing projects in your account might increase accordingly. If you expect a notable upcoming increase in usage, you can proactively request quota adjustments.

Important

You may need to raise some quotas on your project for Databricks to work as expected. For example, if a project exceeds its CPU quota, launching a Databricks cluster fails.

## Google Cloud resource quotas that Databricks requires

The required quotas are grouped by the relevant Google API service. Note that there are different values for minimum functionality and the recommendation for running at scale. For cells that have **Default** in the **Required minimum** column, the Google Cloud default is acceptable for initial use and testing.

### Compute Engine API

| 
Quotas for Compute Engine API

 | 

Required minimum

 | 

Recommended for running at scale

 | 

Field name

 |
| --- | --- | --- | --- |
| 

CPUs

 | 

Default

 | 

2400

 | 

compute.googleapis.com/cpus

 |
| 

Routes

 | 

Default

 | 

300

 | 

compute.googleapis.com/routes

 |
| 

Subnetworks

 | 

Default

 | 

275

 | 

compute.googleapis.com/subnetworks

 |
| 

In-use IP addresses

 | 

Default

 | 

500

 | 

compute.googleapis.com/regional\_in\_use\_addresses

 |
| 

Managed instance groups

 | 

Default

 | 

500

 | 

compute.googleapis.com/instance\_group\_managers

 |
| 

Instance groups

 | 

Default

 | 

500

 | 

compute.googleapis.com/instance\_groups

 |
| 

Persistent Disk Standard (GB)

 | 

Default

 | 

50 TB

 | 

compute.googleapis.com/cpus

 |
| 

N2 CPUs

 | 

Default

 | 

300

 | 

compute.googleapis.com/cpus

 |
| 

Persistent Disk SSD (GB)

 | 

Default

 | 

50 TB

 | 

compute.googleapis.com/disks\_total\_storage

 |
| 

Local SSD (GB)

 | 

Default

 | 

50 TB

 | 

compute.googleapis.com/local\_ssd\_total\_storage

 |

### Databricks SQL quotas for Compute Engine API

SQL warehouses won’t start if you do not provision the required amount of CPU and storage resources. If needed, you can increase the resource quotas to support your use of SQL warehouses. See [Review and increase quotas](https://docs.gcp.databricks.com/en/admin/account-settings-gcp/quotas.html#compute-engine-api). For information about workspace cost, see [cost per workspace](https://docs.gcp.databricks.com/en/admin/workspace/create-workspace.html).

| 
Databricks SQL quotas for Compute Engine API

 | 

Required minimum

 | 

Recommended for running at scale

 |
| --- | --- | --- |
| 

N2 CPUs

 | 

100

 | 

500

 |
| 

Persistent Disk SSD (GB)

 | 

5 TB

 | 

30 TB

 |
| 

Local SSD (GB)

 | 

15 TB

 | 

100 TB

 |

![quota](https://docs.gcp.databricks.com/en/_images/ssd-quota-small.png)

### Cloud Monitoring API

| 
Quotas for Cloud Monitoring

 | 

Required minimum quota

 | 

Recommended quotas for running at scale

 |
| --- | --- | --- |
| 

Time series ingestion requests per minute

 | 

Default

 | 

6000

 |

### Identity and Access Management (IAM) API

| 
Quotas for IAM

 | 

Required minimum quota

 | 

Recommended quotas for running at scale

 |
| --- | --- | --- |
| 

Service account count

 | 

Default

 | 

100

 |

## Review quotas and request quota increases

1.  Go to the [Quotas page in the Cloud Console](https://console.cloud.google.com/iam-admin/quotas).
    
2.  In the top navigation’s project picker, select the Google Cloud project that you plan to use with your workspace to run clusters.
    
    ![Marketplace listing project picker](https://docs.gcp.databricks.com/en/_images/gcp-marketplace-project-picker.png)
    
3.  For each each of the Databricks [project quotas](https://docs.gcp.databricks.com/en/admin/account-settings-gcp/quotas.html#quotas), confirm the current quotas for your Google Cloud region.
    
    1.  For each quota, type either the quota name or its field name into the filter field. Find the row for the quota for the Google Cloud region in which you deploy your workspace. In the filter editor, you can add a region filter to ensure that you are reviewing only the quotas for your desired region. For example, you can search for the CPUs quota for a specific region:
        
        ![One quota and filtered by region](https://docs.gcp.databricks.com/en/_images/gcp-quotas-list.png)
        
    2.  To request quota increases, click the checkbox to the left of the quota, and click the blue text at the top of the page that says **EDIT QUOTAS**. If you do not see that text, you may not have the right permissions or account type. Contact Google Support and ask how to request quota increases for your account.
        
    3.  In the panel that appears to the right, increase the quota values according to the guidance in [Google Cloud resource quotas that Databricks requires](https://docs.gcp.databricks.com/en/admin/account-settings-gcp/quotas.html#quotas) for each quota. Depending on the values you set, your user account, and the Google Cloud project, increasing quotas may require approval from your service provider. If you request quota increases, you’ll need to wait for email confirmation for each request before creating a workspace.
        
        ![Request raise quota](https://docs.gcp.databricks.com/en/_images/gcp-quotas-raise.png)
        
    4.  Repeat this process for all quotas in [Google Cloud resource quotas that Databricks requires](https://docs.gcp.databricks.com/en/admin/account-settings-gcp/quotas.html#quotas).
        
    5.  Wait for email confirmation of any quota increases that you requested.
        
    
    Important
    
    If you change any quotas, wait 15 minutes after changes or email confirmation of quota increases before you create a workspace.
    

Related Google documentation articles:

-   [Google documentation for Compute Engine quotas](https://cloud.google.com/compute/quotas)
    
-   [Google documentation for Cloud Filestore quotas](https://cloud.google.com/filestore/docs/requesting-quota-increases)
    

___