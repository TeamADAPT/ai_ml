Creates and runs virtual machines on Google Cloud Platform.

## Service: compute.googleapis.com

To call this service, we recommend that you use the Google-provided [client libraries](https://cloud.google.com/apis/docs/client-libraries-explained). If your application needs to use your own libraries to call this service, use the following information when you make the API requests.

### Discovery document

A [Discovery Document](https://developers.google.com/discovery/v1/reference/apis) is a machine-readable specification for describing and consuming REST APIs. It is used to build client libraries, IDE plugins, and other tools that interact with Google APIs. One service may provide multiple discovery documents. This service provides the following discovery document:

-   [https://www.googleapis.com/discovery/v1/apis/compute/v1/rest](https://www.googleapis.com/discovery/v1/apis/compute/v1/rest)

### Service endpoint

A [service endpoint](https://cloud.google.com/apis/design/glossary#api_service_endpoint) is a base URL that specifies the network address of an API service. One service might have multiple service endpoints. This service has the following service endpoint and all URIs below are relative to this service endpoint:

-   `https://compute.googleapis.com`

## REST Resource: [v1.acceleratorTypes](https://cloud.google.com/compute/docs/reference/rest/v1/acceleratorTypes)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/acceleratorTypes/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/acceleratorTypes`  
Retrieves an aggregated list of accelerator types. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/acceleratorTypes/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/acceleratorTypes/{acceleratorType}`  
Returns the specified accelerator type. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/acceleratorTypes/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/acceleratorTypes`  
Retrieves a list of accelerator types that are available to the specified project. |

## REST Resource: [v1.addresses](https://cloud.google.com/compute/docs/reference/rest/v1/addresses)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/addresses/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/addresses`  
Retrieves an aggregated list of addresses. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/addresses/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/addresses/{address}`  
Deletes the specified address resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/addresses/get)` | `GET /compute/v1/projects/{project}/regions/{region}/addresses/{address}`  
Returns the specified address resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/addresses/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/addresses`  
Creates an address resource in the specified project by using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/addresses/list)` | `GET /compute/v1/projects/{project}/regions/{region}/addresses`  
Retrieves a list of addresses contained within the specified region. |
| `[move](https://cloud.google.com/compute/docs/reference/rest/v1/addresses/move)` | `POST /compute/v1/projects/{project}/regions/{region}/addresses/{address}/move`  
Moves the specified address resource. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/addresses/setLabels)` | `POST /compute/v1/projects/{project}/regions/{region}/addresses/{resource}/setLabels`  
Sets the labels on an Address. |

## REST Resource: [v1.autoscalers](https://cloud.google.com/compute/docs/reference/rest/v1/autoscalers)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/autoscalers/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/autoscalers`  
Retrieves an aggregated list of autoscalers. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/autoscalers/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/autoscalers/{autoscaler}`  
Deletes the specified autoscaler. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/autoscalers/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/autoscalers/{autoscaler}`  
Returns the specified autoscaler resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/autoscalers/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/autoscalers`  
Creates an autoscaler in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/autoscalers/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/autoscalers`  
Retrieves a list of autoscalers contained within the specified zone. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/autoscalers/patch)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/autoscalers`  
Updates an autoscaler in the specified project using the data included in the request. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/autoscalers/update)` | `PUT /compute/v1/projects/{project}/zones/{zone}/autoscalers`  
Updates an autoscaler in the specified project using the data included in the request. |

## REST Resource: [v1.backendBuckets](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets)

 
| Methods |
| --- |
| `[addSignedUrlKey](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/addSignedUrlKey)` | `POST /compute/v1/projects/{project}/global/backendBuckets/{backendBucket}/addSignedUrlKey`  
Adds a key for validating requests with signed URLs for this backend bucket. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/delete)` | `DELETE /compute/v1/projects/{project}/global/backendBuckets/{backendBucket}`  
Deletes the specified BackendBucket resource. |
| `[deleteSignedUrlKey](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/deleteSignedUrlKey)` | `POST /compute/v1/projects/{project}/global/backendBuckets/{backendBucket}/deleteSignedUrlKey`  
Deletes a key for validating requests with signed URLs for this backend bucket. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/get)` | `GET /compute/v1/projects/{project}/global/backendBuckets/{backendBucket}`  
Returns the specified BackendBucket resource. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/getIamPolicy)` | `GET /compute/v1/projects/{project}/global/backendBuckets/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/insert)` | `POST /compute/v1/projects/{project}/global/backendBuckets`  
Creates a BackendBucket resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/list)` | `GET /compute/v1/projects/{project}/global/backendBuckets`  
Retrieves the list of BackendBucket resources available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/patch)` | `PATCH /compute/v1/projects/{project}/global/backendBuckets/{backendBucket}`  
Updates the specified BackendBucket resource with the data included in the request. |
| `[setEdgeSecurityPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/setEdgeSecurityPolicy)` | `POST /compute/v1/projects/{project}/global/backendBuckets/{backendBucket}/setEdgeSecurityPolicy`  
Sets the edge security policy for the specified backend bucket. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/setIamPolicy)` | `POST /compute/v1/projects/{project}/global/backendBuckets/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/testIamPermissions)` | `POST /compute/v1/projects/{project}/global/backendBuckets/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets/update)` | `PUT /compute/v1/projects/{project}/global/backendBuckets/{backendBucket}`  
Updates the specified BackendBucket resource with the data included in the request. |

## REST Resource: [v1.backendServices](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices)

 
| Methods |
| --- |
| `[addSignedUrlKey](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/addSignedUrlKey)` | `POST /compute/v1/projects/{project}/global/backendServices/{backendService}/addSignedUrlKey`  
Adds a key for validating requests with signed URLs for this backend service. |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/backendServices`  
Retrieves the list of all BackendService resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/delete)` | `DELETE /compute/v1/projects/{project}/global/backendServices/{backendService}`  
Deletes the specified BackendService resource. |
| `[deleteSignedUrlKey](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/deleteSignedUrlKey)` | `POST /compute/v1/projects/{project}/global/backendServices/{backendService}/deleteSignedUrlKey`  
Deletes a key for validating requests with signed URLs for this backend service. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/get)` | `GET /compute/v1/projects/{project}/global/backendServices/{backendService}`  
Returns the specified BackendService resource. |
| `[getHealth](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/getHealth)` | `POST /compute/v1/projects/{project}/global/backendServices/{backendService}/getHealth`  
Gets the most recent health check results for this BackendService. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/getIamPolicy)` | `GET /compute/v1/projects/{project}/global/backendServices/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/insert)` | `POST /compute/v1/projects/{project}/global/backendServices`  
Creates a BackendService resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/list)` | `GET /compute/v1/projects/{project}/global/backendServices`  
Retrieves the list of BackendService resources available to the specified project. |
| `[listUsable](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/listUsable)` | `GET /compute/v1/projects/{project}/global/backendServices/listUsable`  
Retrieves a list of all usable backend services in the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/patch)` | `PATCH /compute/v1/projects/{project}/global/backendServices/{backendService}`  
Patches the specified BackendService resource with the data included in the request. |
| `[setEdgeSecurityPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/setEdgeSecurityPolicy)` | `POST /compute/v1/projects/{project}/global/backendServices/{backendService}/setEdgeSecurityPolicy`  
Sets the edge security policy for the specified backend service. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/setIamPolicy)` | `POST /compute/v1/projects/{project}/global/backendServices/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setSecurityPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/setSecurityPolicy)` | `POST /compute/v1/projects/{project}/global/backendServices/{backendService}/setSecurityPolicy`  
Sets the Google Cloud Armor security policy for the specified backend service. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/testIamPermissions)` | `POST /compute/v1/projects/{project}/global/backendServices/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices/update)` | `PUT /compute/v1/projects/{project}/global/backendServices/{backendService}`  
Updates the specified BackendService resource with the data included in the request. |

## REST Resource: [v1.diskTypes](https://cloud.google.com/compute/docs/reference/rest/v1/diskTypes)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/diskTypes/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/diskTypes`  
Retrieves an aggregated list of disk types. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/diskTypes/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/diskTypes/{diskType}`  
Returns the specified disk type. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/diskTypes/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/diskTypes`  
Retrieves a list of disk types available to the specified project. |

## REST Resource: [v1.disks](https://cloud.google.com/compute/docs/reference/rest/v1/disks)

 
| Methods |
| --- |
| `[addResourcePolicies](https://cloud.google.com/compute/docs/reference/rest/v1/disks/addResourcePolicies)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/{disk}/addResourcePolicies`  
Adds existing resource policies to a disk. |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/disks/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/disks`  
Retrieves an aggregated list of persistent disks. |
| `[bulkInsert](https://cloud.google.com/compute/docs/reference/rest/v1/disks/bulkInsert)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/bulkInsert`  
Bulk create a set of disks. |
| `[createSnapshot](https://cloud.google.com/compute/docs/reference/rest/v1/disks/createSnapshot)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/{disk}/createSnapshot`  
Creates a snapshot of a specified persistent disk. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/disks/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/disks/{disk}`  
Deletes the specified persistent disk. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/disks/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/disks/{disk}`  
Returns the specified persistent disk. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/disks/getIamPolicy)` | `GET /compute/v1/projects/{project}/zones/{zone}/disks/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/disks/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks`  
Creates a persistent disk in the specified project using the data in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/disks/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/disks`  
Retrieves a list of persistent disks contained within the specified zone. |
| `[removeResourcePolicies](https://cloud.google.com/compute/docs/reference/rest/v1/disks/removeResourcePolicies)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/{disk}/removeResourcePolicies`  
Removes resource policies from a disk. |
| `[resize](https://cloud.google.com/compute/docs/reference/rest/v1/disks/resize)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/{disk}/resize`  
Resizes the specified persistent disk. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/disks/setIamPolicy)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/disks/setLabels)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/{resource}/setLabels`  
Sets the labels on a disk. |
| `[startAsyncReplication](https://cloud.google.com/compute/docs/reference/rest/v1/disks/startAsyncReplication)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/{disk}/startAsyncReplication`  
Starts asynchronous replication. |
| `[stopAsyncReplication](https://cloud.google.com/compute/docs/reference/rest/v1/disks/stopAsyncReplication)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/{disk}/stopAsyncReplication`  
Stops asynchronous replication. |
| `[stopGroupAsyncReplication](https://cloud.google.com/compute/docs/reference/rest/v1/disks/stopGroupAsyncReplication)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/stopGroupAsyncReplication`  
Stops asynchronous replication for a consistency group of disks. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/disks/testIamPermissions)` | `POST /compute/v1/projects/{project}/zones/{zone}/disks/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/disks/update)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/disks/{disk}`  
Updates the specified disk with the data included in the request. |

## REST Resource: [v1.externalVpnGateways](https://cloud.google.com/compute/docs/reference/rest/v1/externalVpnGateways)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/externalVpnGateways/delete)` | `DELETE /compute/v1/projects/{project}/global/externalVpnGateways/{externalVpnGateway}`  
Deletes the specified externalVpnGateway. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/externalVpnGateways/get)` | `GET /compute/v1/projects/{project}/global/externalVpnGateways/{externalVpnGateway}`  
Returns the specified externalVpnGateway. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/externalVpnGateways/insert)` | `POST /compute/v1/projects/{project}/global/externalVpnGateways`  
Creates a ExternalVpnGateway in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/externalVpnGateways/list)` | `GET /compute/v1/projects/{project}/global/externalVpnGateways`  
Retrieves the list of ExternalVpnGateway available to the specified project. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/externalVpnGateways/setLabels)` | `POST /compute/v1/projects/{project}/global/externalVpnGateways/{resource}/setLabels`  
Sets the labels on an ExternalVpnGateway. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/externalVpnGateways/testIamPermissions)` | `POST /compute/v1/projects/{project}/global/externalVpnGateways/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.firewallPolicies](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies)

 
| Methods |
| --- |
| `[addAssociation](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/addAssociation)` | `POST /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}/addAssociation`  
Inserts an association for the specified firewall policy. |
| `[addRule](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/addRule)` | `POST /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}/addRule`  
Inserts a rule into a firewall policy. |
| `[cloneRules](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/cloneRules)` | `POST /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}/cloneRules`  
Copies rules to the specified firewall policy. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/delete)` | `DELETE /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}`  
Deletes the specified policy. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/get)` | `GET /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}`  
Returns the specified firewall policy. |
| `[getAssociation](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/getAssociation)` | `GET /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}/getAssociation`  
Gets an association with the specified name. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/getIamPolicy)` | `GET /compute/v1/locations/global/{resource=firewallPolicies/*}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[getRule](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/getRule)` | `GET /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}/getRule`  
Gets a rule of the specified priority. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/insert)` | `POST /compute/v1/locations/global/firewallPolicies`  
Creates a new policy in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/list)` | `GET /compute/v1/locations/global/firewallPolicies`  
Lists all the policies that have been configured for the specified folder or organization. |
| `[listAssociations](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/listAssociations)` | `GET /compute/v1/locations/global/firewallPolicies/listAssociations`  
Lists associations of a specified target, i.e., organization or folder. |
| `[move](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/move)` | `POST /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}/move`  
Moves the specified firewall policy. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/patch)` | `PATCH /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}`  
Patches the specified policy with the data included in the request. |
| `[patchRule](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/patchRule)` | `POST /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}/patchRule`  
Patches a rule of the specified priority. |
| `[removeAssociation](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/removeAssociation)` | `POST /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}/removeAssociation`  
Removes an association for the specified firewall policy. |
| `[removeRule](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/removeRule)` | `POST /compute/v1/locations/global/{firewallPolicy=firewallPolicies/*}/removeRule`  
Deletes a rule of the specified priority. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/setIamPolicy)` | `POST /compute/v1/locations/global/{resource=firewallPolicies/*}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/testIamPermissions)` | `POST /compute/v1/locations/global/{resource=firewallPolicies/*}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.firewalls](https://cloud.google.com/compute/docs/reference/rest/v1/firewalls)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/firewalls/delete)` | `DELETE /compute/v1/projects/{project}/global/firewalls/{firewall}`  
Deletes the specified firewall. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/firewalls/get)` | `GET /compute/v1/projects/{project}/global/firewalls/{firewall}`  
Returns the specified firewall. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/firewalls/insert)` | `POST /compute/v1/projects/{project}/global/firewalls`  
Creates a firewall rule in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/firewalls/list)` | `GET /compute/v1/projects/{project}/global/firewalls`  
Retrieves the list of firewall rules available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/firewalls/patch)` | `PATCH /compute/v1/projects/{project}/global/firewalls/{firewall}`  
Updates the specified firewall rule with the data included in the request. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/firewalls/update)` | `PUT /compute/v1/projects/{project}/global/firewalls/{firewall}`  
Updates the specified firewall rule with the data included in the request. |

## REST Resource: [v1.forwardingRules](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/forwardingRules`  
Retrieves an aggregated list of forwarding rules. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/forwardingRules/{forwardingRule}`  
Deletes the specified ForwardingRule resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules/get)` | `GET /compute/v1/projects/{project}/regions/{region}/forwardingRules/{forwardingRule}`  
Returns the specified ForwardingRule resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/forwardingRules`  
Creates a ForwardingRule resource in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules/list)` | `GET /compute/v1/projects/{project}/regions/{region}/forwardingRules`  
Retrieves a list of ForwardingRule resources available to the specified project and region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/forwardingRules/{forwardingRule}`  
Updates the specified forwarding rule with the data included in the request. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules/setLabels)` | `POST /compute/v1/projects/{project}/regions/{region}/forwardingRules/{resource}/setLabels`  
Sets the labels on the specified resource. |
| `[setTarget](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules/setTarget)` | `POST /compute/v1/projects/{project}/regions/{region}/forwardingRules/{forwardingRule}/setTarget`  
Changes target URL for forwarding rule. |

## REST Resource: [v1.globalAddresses](https://cloud.google.com/compute/docs/reference/rest/v1/globalAddresses)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/globalAddresses/delete)` | `DELETE /compute/v1/projects/{project}/global/addresses/{address}`  
Deletes the specified address resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/globalAddresses/get)` | `GET /compute/v1/projects/{project}/global/addresses/{address}`  
Returns the specified address resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/globalAddresses/insert)` | `POST /compute/v1/projects/{project}/global/addresses`  
Creates an address resource in the specified project by using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/globalAddresses/list)` | `GET /compute/v1/projects/{project}/global/addresses`  
Retrieves a list of global addresses. |
| `[move](https://cloud.google.com/compute/docs/reference/rest/v1/globalAddresses/move)` | `POST /compute/v1/projects/{project}/global/addresses/{address}/move`  
Moves the specified address resource from one project to another project. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/globalAddresses/setLabels)` | `POST /compute/v1/projects/{project}/global/addresses/{resource}/setLabels`  
Sets the labels on a GlobalAddress. |

## REST Resource: [v1.globalForwardingRules](https://cloud.google.com/compute/docs/reference/rest/v1/globalForwardingRules)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/globalForwardingRules/delete)` | `DELETE /compute/v1/projects/{project}/global/forwardingRules/{forwardingRule}`  
Deletes the specified GlobalForwardingRule resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/globalForwardingRules/get)` | `GET /compute/v1/projects/{project}/global/forwardingRules/{forwardingRule}`  
Returns the specified GlobalForwardingRule resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/globalForwardingRules/insert)` | `POST /compute/v1/projects/{project}/global/forwardingRules`  
Creates a GlobalForwardingRule resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/globalForwardingRules/list)` | `GET /compute/v1/projects/{project}/global/forwardingRules`  
Retrieves a list of GlobalForwardingRule resources available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/globalForwardingRules/patch)` | `PATCH /compute/v1/projects/{project}/global/forwardingRules/{forwardingRule}`  
Updates the specified forwarding rule with the data included in the request. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/globalForwardingRules/setLabels)` | `POST /compute/v1/projects/{project}/global/forwardingRules/{resource}/setLabels`  
Sets the labels on the specified resource. |
| `[setTarget](https://cloud.google.com/compute/docs/reference/rest/v1/globalForwardingRules/setTarget)` | `POST /compute/v1/projects/{project}/global/forwardingRules/{forwardingRule}/setTarget`  
Changes target URL for the GlobalForwardingRule resource. |

## REST Resource: [v1.globalNetworkEndpointGroups](https://cloud.google.com/compute/docs/reference/rest/v1/globalNetworkEndpointGroups)

 
| Methods |
| --- |
| `[attachNetworkEndpoints](https://cloud.google.com/compute/docs/reference/rest/v1/globalNetworkEndpointGroups/attachNetworkEndpoints)` | `POST /compute/v1/projects/{project}/global/networkEndpointGroups/{networkEndpointGroup}/attachNetworkEndpoints`  
Attach a network endpoint to the specified network endpoint group. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/globalNetworkEndpointGroups/delete)` | `DELETE /compute/v1/projects/{project}/global/networkEndpointGroups/{networkEndpointGroup}`  
Deletes the specified network endpoint group.Note that the NEG cannot be deleted if there are backend services referencing it. |
| `[detachNetworkEndpoints](https://cloud.google.com/compute/docs/reference/rest/v1/globalNetworkEndpointGroups/detachNetworkEndpoints)` | `POST /compute/v1/projects/{project}/global/networkEndpointGroups/{networkEndpointGroup}/detachNetworkEndpoints`  
Detach the network endpoint from the specified network endpoint group. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/globalNetworkEndpointGroups/get)` | `GET /compute/v1/projects/{project}/global/networkEndpointGroups/{networkEndpointGroup}`  
Returns the specified network endpoint group. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/globalNetworkEndpointGroups/insert)` | `POST /compute/v1/projects/{project}/global/networkEndpointGroups`  
Creates a network endpoint group in the specified project using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/globalNetworkEndpointGroups/list)` | `GET /compute/v1/projects/{project}/global/networkEndpointGroups`  
Retrieves the list of network endpoint groups that are located in the specified project. |
| `[listNetworkEndpoints](https://cloud.google.com/compute/docs/reference/rest/v1/globalNetworkEndpointGroups/listNetworkEndpoints)` | `POST /compute/v1/projects/{project}/global/networkEndpointGroups/{networkEndpointGroup}/listNetworkEndpoints`  
Lists the network endpoints in the specified network endpoint group. |

## REST Resource: [v1.globalOperations](https://cloud.google.com/compute/docs/reference/rest/v1/globalOperations)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/globalOperations/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/operations`  
Retrieves an aggregated list of all operations. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/globalOperations/delete)` | `DELETE /compute/v1/projects/{project}/global/operations/{operation}`  
Deletes the specified Operations resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/globalOperations/get)` | `GET /compute/v1/projects/{project}/global/operations/{operation}`  
Retrieves the specified Operations resource. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/globalOperations/list)` | `GET /compute/v1/projects/{project}/global/operations`  
Retrieves a list of Operation resources contained within the specified project. |
| `[wait](https://cloud.google.com/compute/docs/reference/rest/v1/globalOperations/wait)` | `POST /compute/v1/projects/{project}/global/operations/{operation}/wait`  
Waits for the specified Operation resource to return as `DONE` or for the request to approach the 2 minute deadline, and retrieves the specified Operation resource. |

## REST Resource: [v1.globalOrganizationOperations](https://cloud.google.com/compute/docs/reference/rest/v1/globalOrganizationOperations)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/globalOrganizationOperations/delete)` | `DELETE /compute/v1/locations/global/operations/{operation}`  
Deletes the specified Operations resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/globalOrganizationOperations/get)` | `GET /compute/v1/locations/global/operations/{operation}`  
Retrieves the specified Operations resource. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/globalOrganizationOperations/list)` | `GET /compute/v1/locations/global/operations`  
Retrieves a list of Operation resources contained within the specified organization. |

## REST Resource: [v1.globalPublicDelegatedPrefixes](https://cloud.google.com/compute/docs/reference/rest/v1/globalPublicDelegatedPrefixes)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/globalPublicDelegatedPrefixes/delete)` | `DELETE /compute/v1/projects/{project}/global/publicDelegatedPrefixes/{publicDelegatedPrefix}`  
Deletes the specified global PublicDelegatedPrefix. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/globalPublicDelegatedPrefixes/get)` | `GET /compute/v1/projects/{project}/global/publicDelegatedPrefixes/{publicDelegatedPrefix}`  
Returns the specified global PublicDelegatedPrefix resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/globalPublicDelegatedPrefixes/insert)` | `POST /compute/v1/projects/{project}/global/publicDelegatedPrefixes`  
Creates a global PublicDelegatedPrefix in the specified project using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/globalPublicDelegatedPrefixes/list)` | `GET /compute/v1/projects/{project}/global/publicDelegatedPrefixes`  
Lists the global PublicDelegatedPrefixes for a project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/globalPublicDelegatedPrefixes/patch)` | `PATCH /compute/v1/projects/{project}/global/publicDelegatedPrefixes/{publicDelegatedPrefix}`  
Patches the specified global PublicDelegatedPrefix resource with the data included in the request. |

## REST Resource: [v1.healthChecks](https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/healthChecks`  
Retrieves the list of all HealthCheck resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks/delete)` | `DELETE /compute/v1/projects/{project}/global/healthChecks/{healthCheck}`  
Deletes the specified HealthCheck resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks/get)` | `GET /compute/v1/projects/{project}/global/healthChecks/{healthCheck}`  
Returns the specified HealthCheck resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks/insert)` | `POST /compute/v1/projects/{project}/global/healthChecks`  
Creates a HealthCheck resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks/list)` | `GET /compute/v1/projects/{project}/global/healthChecks`  
Retrieves the list of HealthCheck resources available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks/patch)` | `PATCH /compute/v1/projects/{project}/global/healthChecks/{healthCheck}`  
Updates a HealthCheck resource in the specified project using the data included in the request. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks/update)` | `PUT /compute/v1/projects/{project}/global/healthChecks/{healthCheck}`  
Updates a HealthCheck resource in the specified project using the data included in the request. |

## REST Resource: [v1.httpHealthChecks](https://cloud.google.com/compute/docs/reference/rest/v1/httpHealthChecks)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/httpHealthChecks/delete)` | `DELETE /compute/v1/projects/{project}/global/httpHealthChecks/{httpHealthCheck}`  
Deletes the specified HttpHealthCheck resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/httpHealthChecks/get)` | `GET /compute/v1/projects/{project}/global/httpHealthChecks/{httpHealthCheck}`  
Returns the specified HttpHealthCheck resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/httpHealthChecks/insert)` | `POST /compute/v1/projects/{project}/global/httpHealthChecks`  
Creates a HttpHealthCheck resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/httpHealthChecks/list)` | `GET /compute/v1/projects/{project}/global/httpHealthChecks`  
Retrieves the list of HttpHealthCheck resources available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/httpHealthChecks/patch)` | `PATCH /compute/v1/projects/{project}/global/httpHealthChecks/{httpHealthCheck}`  
Updates a HttpHealthCheck resource in the specified project using the data included in the request. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/httpHealthChecks/update)` | `PUT /compute/v1/projects/{project}/global/httpHealthChecks/{httpHealthCheck}`  
Updates a HttpHealthCheck resource in the specified project using the data included in the request. |

## REST Resource: [v1.httpsHealthChecks](https://cloud.google.com/compute/docs/reference/rest/v1/httpsHealthChecks)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/httpsHealthChecks/delete)` | `DELETE /compute/v1/projects/{project}/global/httpsHealthChecks/{httpsHealthCheck}`  
Deletes the specified HttpsHealthCheck resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/httpsHealthChecks/get)` | `GET /compute/v1/projects/{project}/global/httpsHealthChecks/{httpsHealthCheck}`  
Returns the specified HttpsHealthCheck resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/httpsHealthChecks/insert)` | `POST /compute/v1/projects/{project}/global/httpsHealthChecks`  
Creates a HttpsHealthCheck resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/httpsHealthChecks/list)` | `GET /compute/v1/projects/{project}/global/httpsHealthChecks`  
Retrieves the list of HttpsHealthCheck resources available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/httpsHealthChecks/patch)` | `PATCH /compute/v1/projects/{project}/global/httpsHealthChecks/{httpsHealthCheck}`  
Updates a HttpsHealthCheck resource in the specified project using the data included in the request. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/httpsHealthChecks/update)` | `PUT /compute/v1/projects/{project}/global/httpsHealthChecks/{httpsHealthCheck}`  
Updates a HttpsHealthCheck resource in the specified project using the data included in the request. |

## REST Resource: [v1.imageFamilyViews](https://cloud.google.com/compute/docs/reference/rest/v1/imageFamilyViews)

 
| Methods |
| --- |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/imageFamilyViews/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/imageFamilyViews/{family}`  
Returns the latest image that is part of an image family, is not deprecated and is rolled out in the specified zone. |

## REST Resource: [v1.images](https://cloud.google.com/compute/docs/reference/rest/v1/images)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/images/delete)` | `DELETE /compute/v1/projects/{project}/global/images/{image}`  
Deletes the specified image. |
| `[deprecate](https://cloud.google.com/compute/docs/reference/rest/v1/images/deprecate)` | `POST /compute/v1/projects/{project}/global/images/{image}/deprecate`  
Sets the deprecation status of an image. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/images/get)` | `GET /compute/v1/projects/{project}/global/images/{image}`  
Returns the specified image. |
| `[getFromFamily](https://cloud.google.com/compute/docs/reference/rest/v1/images/getFromFamily)` | `GET /compute/v1/projects/{project}/global/images/family/{family}`  
Returns the latest image that is part of an image family and is not deprecated. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/images/getIamPolicy)` | `GET /compute/v1/projects/{project}/global/images/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/images/insert)` | `POST /compute/v1/projects/{project}/global/images`  
Creates an image in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/images/list)` | `GET /compute/v1/projects/{project}/global/images`  
Retrieves the list of [custom images](https://cloud.google.com/compute/docs/images) available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/images/patch)` | `PATCH /compute/v1/projects/{project}/global/images/{image}`  
Patches the specified image with the data included in the request. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/images/setIamPolicy)` | `POST /compute/v1/projects/{project}/global/images/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/images/setLabels)` | `POST /compute/v1/projects/{project}/global/images/{resource}/setLabels`  
Sets the labels on an image. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/images/testIamPermissions)` | `POST /compute/v1/projects/{project}/global/images/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.instanceGroupManagerResizeRequests](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagerResizeRequests)

 
| Methods |
| --- |
| `[cancel](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagerResizeRequests/cancel)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/resizeRequests/{resizeRequest}/cancel`  
Cancels the specified resize request and removes it from the queue. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagerResizeRequests/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/resizeRequests/{resizeRequest}`  
Deletes the specified, inactive resize request. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagerResizeRequests/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/resizeRequests/{resizeRequest}`  
Returns all of the details about the specified resize request. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagerResizeRequests/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/resizeRequests`  
Creates a new resize request that starts provisioning VMs immediately or queues VM creation. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagerResizeRequests/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/resizeRequests`  
Retrieves a list of resize requests that are contained in the managed instance group. |

## REST Resource: [v1.instanceGroupManagers](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers)

 
| Methods |
| --- |
| `[abandonInstances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/abandonInstances)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/abandonInstances`  
Flags the specified instances to be removed from the managed instance group. |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/instanceGroupManagers`  
Retrieves the list of managed instance groups and groups them by zone. |
| `[applyUpdatesToInstances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/applyUpdatesToInstances)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/applyUpdatesToInstances`  
Applies changes to selected instances on the managed instance group. |
| `[createInstances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/createInstances)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/createInstances`  
Creates instances with per-instance configurations in this managed instance group. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}`  
Deletes the specified managed instance group and all of the instances in that group. |
| `[deleteInstances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/deleteInstances)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/deleteInstances`  
Flags the specified instances in the managed instance group for immediate deletion. |
| `[deletePerInstanceConfigs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/deletePerInstanceConfigs)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/deletePerInstanceConfigs`  
Deletes selected per-instance configurations for the managed instance group. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}`  
Returns all of the details about the specified managed instance group. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers`  
Creates a managed instance group using the information that you specify in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers`  
Retrieves a list of managed instance groups that are contained within the specified project and zone. |
| `[listErrors](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/listErrors)` | `GET /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/listErrors`  
Lists all errors thrown by actions on instances for a given managed instance group. |
| `[listManagedInstances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/listManagedInstances)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/listManagedInstances`  
Lists all of the instances in the managed instance group. |
| `[listPerInstanceConfigs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/listPerInstanceConfigs)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/listPerInstanceConfigs`  
Lists all of the per-instance configurations defined for the managed instance group. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/patch)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}`  
Updates a managed instance group using the information that you specify in the request. |
| `[patchPerInstanceConfigs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/patchPerInstanceConfigs)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/patchPerInstanceConfigs`  
Inserts or patches per-instance configurations for the managed instance group. |
| `[recreateInstances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/recreateInstances)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/recreateInstances`  
Flags the specified VM instances in the managed instance group to be immediately recreated. |
| `[resize](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/resize)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/resize`  
Resizes the managed instance group. |
| `[setInstanceTemplate](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/setInstanceTemplate)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/setInstanceTemplate`  
Specifies the instance template to use when creating new instances in this group. |
| `[setTargetPools](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/setTargetPools)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/setTargetPools`  
Modifies the target pools to which all instances in this managed instance group are assigned. |
| `[updatePerInstanceConfigs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/updatePerInstanceConfigs)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/updatePerInstanceConfigs`  
Inserts or updates per-instance configurations for the managed instance group. |

## REST Resource: [v1.instanceGroups](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups)

 
| Methods |
| --- |
| `[addInstances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/addInstances)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroups/{instanceGroup}/addInstances`  
Adds a list of instances to the specified instance group. |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/instanceGroups`  
Retrieves the list of instance groups and sorts them by zone. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/instanceGroups/{instanceGroup}`  
Deletes the specified instance group. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/instanceGroups/{instanceGroup}`  
Returns the specified zonal instance group. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroups`  
Creates an instance group in the specified project using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/instanceGroups`  
Retrieves the list of zonal instance group resources contained within the specified zone. |
| `[listInstances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/listInstances)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroups/{instanceGroup}/listInstances`  
Lists the instances in the specified instance group. |
| `[removeInstances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/removeInstances)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroups/{instanceGroup}/removeInstances`  
Removes one or more instances from the specified instance group, but does not delete those instances. |
| `[setNamedPorts](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/setNamedPorts)` | `POST /compute/v1/projects/{project}/zones/{zone}/instanceGroups/{instanceGroup}/setNamedPorts`  
Sets the named ports for the specified instance group. |

## REST Resource: [v1.instanceSettings](https://cloud.google.com/compute/docs/reference/rest/v1/instanceSettings)

 
| Methods |
| --- |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/instanceSettings/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/instanceSettings`  
Get Instance settings. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/instanceSettings/patch)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/instanceSettings`  
Patch Instance settings |

## REST Resource: [v1.instanceTemplates](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/instanceTemplates`  
Retrieves the list of all InstanceTemplates resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/delete)` | `DELETE /compute/v1/projects/{project}/global/instanceTemplates/{instanceTemplate}`  
Deletes the specified instance template. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/get)` | `GET /compute/v1/projects/{project}/global/instanceTemplates/{instanceTemplate}`  
Returns the specified instance template. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/getIamPolicy)` | `GET /compute/v1/projects/{project}/global/instanceTemplates/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/insert)` | `POST /compute/v1/projects/{project}/global/instanceTemplates`  
Creates an instance template in the specified project using the data that is included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/list)` | `GET /compute/v1/projects/{project}/global/instanceTemplates`  
Retrieves a list of instance templates that are contained within the specified project. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/setIamPolicy)` | `POST /compute/v1/projects/{project}/global/instanceTemplates/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/testIamPermissions)` | `POST /compute/v1/projects/{project}/global/instanceTemplates/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.instances](https://cloud.google.com/compute/docs/reference/rest/v1/instances)

 
| Methods |
| --- |
| `[addAccessConfig](https://cloud.google.com/compute/docs/reference/rest/v1/instances/addAccessConfig)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/addAccessConfig`  
Adds an access config to an instance's network interface. |
| `[addResourcePolicies](https://cloud.google.com/compute/docs/reference/rest/v1/instances/addResourcePolicies)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/addResourcePolicies`  
Adds existing resource policies to an instance. |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/instances/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/instances`  
Retrieves an aggregated list of all of the instances in your project across all regions and zones. |
| `[attachDisk](https://cloud.google.com/compute/docs/reference/rest/v1/instances/attachDisk)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/attachDisk`  
Attaches an existing Disk resource to an instance. |
| `[bulkInsert](https://cloud.google.com/compute/docs/reference/rest/v1/instances/bulkInsert)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/bulkInsert`  
Creates multiple instances. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/instances/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/instances/{instance}`  
Deletes the specified Instance resource. |
| `[deleteAccessConfig](https://cloud.google.com/compute/docs/reference/rest/v1/instances/deleteAccessConfig)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/deleteAccessConfig`  
Deletes an access config from an instance's network interface. |
| `[detachDisk](https://cloud.google.com/compute/docs/reference/rest/v1/instances/detachDisk)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/detachDisk`  
Detaches a disk from an instance. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/instances/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/instances/{instance}`  
Returns the specified Instance resource. |
| `[getEffectiveFirewalls](https://cloud.google.com/compute/docs/reference/rest/v1/instances/getEffectiveFirewalls)` | `GET /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/getEffectiveFirewalls`  
Returns effective firewalls applied to an interface of the instance. |
| `[getGuestAttributes](https://cloud.google.com/compute/docs/reference/rest/v1/instances/getGuestAttributes)` | `GET /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/getGuestAttributes`  
Returns the specified guest attributes entry. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/instances/getIamPolicy)` | `GET /compute/v1/projects/{project}/zones/{zone}/instances/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[getScreenshot](https://cloud.google.com/compute/docs/reference/rest/v1/instances/getScreenshot)` | `GET /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/screenshot`  
Returns the screenshot from the specified instance. |
| `[getSerialPortOutput](https://cloud.google.com/compute/docs/reference/rest/v1/instances/getSerialPortOutput)` | `GET /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/serialPort`  
Returns the last 1 MB of serial port output from the specified instance. |
| `[getShieldedInstanceIdentity](https://cloud.google.com/compute/docs/reference/rest/v1/instances/getShieldedInstanceIdentity)` | `GET /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/getShieldedInstanceIdentity`  
Returns the Shielded Instance Identity of an instance |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/instances/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances`  
Creates an instance resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/instances/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/instances`  
Retrieves the list of instances contained within the specified zone. |
| `[listReferrers](https://cloud.google.com/compute/docs/reference/rest/v1/instances/listReferrers)` | `GET /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/referrers`  
Retrieves a list of resources that refer to the VM instance specified in the request. |
| `[performMaintenance](https://cloud.google.com/compute/docs/reference/rest/v1/instances/performMaintenance)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/performMaintenance`  
Perform a manual maintenance on the instance. |
| `[removeResourcePolicies](https://cloud.google.com/compute/docs/reference/rest/v1/instances/removeResourcePolicies)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/removeResourcePolicies`  
Removes resource policies from an instance. |
| `[reset](https://cloud.google.com/compute/docs/reference/rest/v1/instances/reset)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/reset`  
Performs a reset on the instance. |
| `[resume](https://cloud.google.com/compute/docs/reference/rest/v1/instances/resume)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/resume`
Resumes an instance that was suspended using the [`instances().suspend` method](https://cloud.google.com/compute/docs/reference/rest/v1/instances/suspend).

 |
| `[sendDiagnosticInterrupt](https://cloud.google.com/compute/docs/reference/rest/v1/instances/sendDiagnosticInterrupt)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/sendDiagnosticInterrupt`  
Sends diagnostic interrupt to the instance. |
| `[setDeletionProtection](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setDeletionProtection)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{resource}/setDeletionProtection`  
Sets deletion protection on the instance. |
| `[setDiskAutoDelete](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setDiskAutoDelete)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setDiskAutoDelete`  
Sets the auto-delete flag for a disk attached to an instance. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setIamPolicy)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setLabels)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setLabels`  
Sets labels on an instance. |
| `[setMachineResources](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setMachineResources)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setMachineResources`  
Changes the number and/or type of accelerator for a stopped instance to the values specified in the request. |
| `[setMachineType](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setMachineType)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setMachineType`  
Changes the machine type for a stopped instance to the machine type specified in the request. |
| `[setMetadata](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setMetadata)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setMetadata`  
Sets metadata for the specified instance to the data included in the request. |
| `[setMinCpuPlatform](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setMinCpuPlatform)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setMinCpuPlatform`  
Changes the minimum CPU platform that this instance should use. |
| `[setName](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setName)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setName`  
Sets name of an instance. |
| `[setScheduling](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setScheduling)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setScheduling`  
Sets an instance's scheduling options. |
| `[setSecurityPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setSecurityPolicy)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setSecurityPolicy`  
Sets the Google Cloud Armor security policy for the specified instance. |
| `[setServiceAccount](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setServiceAccount)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setServiceAccount`  
Sets the service account on the instance. |
| `[setShieldedInstanceIntegrityPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setShieldedInstanceIntegrityPolicy)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setShieldedInstanceIntegrityPolicy`  
Sets the Shielded Instance integrity policy for an instance. |
| `[setTags](https://cloud.google.com/compute/docs/reference/rest/v1/instances/setTags)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/setTags`  
Sets [network tags](https://cloud.google.com/vpc/docs/add-remove-network-tags) for the specified instance to the data included in the request. |
| `[simulateMaintenanceEvent](https://cloud.google.com/compute/docs/reference/rest/v1/instances/simulateMaintenanceEvent)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/simulateMaintenanceEvent`  
Simulates a host maintenance event on a VM. |
| `[start](https://cloud.google.com/compute/docs/reference/rest/v1/instances/start)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/start`

Starts an instance that was stopped using the [`instances().stop`](https://cloud.google.com/compute/docs/reference/rest/v1/instances/stop) method.

 |
| `[startWithEncryptionKey](https://cloud.google.com/compute/docs/reference/rest/v1/instances/startWithEncryptionKey)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/startWithEncryptionKey`

Starts an instance that was stopped using the [`instances().stop`](https://cloud.google.com/compute/docs/reference/rest/v1/instances/stop) method.

 |
| `[stop](https://cloud.google.com/compute/docs/reference/rest/v1/instances/stop)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/stop`  
Stops a running instance, shutting it down cleanly, and allows you to restart the instance at a later time. |
| `[suspend](https://cloud.google.com/compute/docs/reference/rest/v1/instances/suspend)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/suspend`  
This method suspends a running instance, saving its state to persistent storage, and allows you to resume the instance at a later time. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/instances/testIamPermissions)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/instances/update)` | `PUT /compute/v1/projects/{project}/zones/{zone}/instances/{instance}`  
Updates an instance only if the necessary resources are available. |
| `[updateAccessConfig](https://cloud.google.com/compute/docs/reference/rest/v1/instances/updateAccessConfig)` | `POST /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/updateAccessConfig`  
Updates the specified access config from an instance's network interface with the data included in the request. |
| `[updateDisplayDevice](https://cloud.google.com/compute/docs/reference/rest/v1/instances/updateDisplayDevice)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/updateDisplayDevice`  
Updates the Display config for a VM instance. |
| `[updateNetworkInterface](https://cloud.google.com/compute/docs/reference/rest/v1/instances/updateNetworkInterface)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/updateNetworkInterface`  
Updates an instance's network interface. |
| `[updateShieldedInstanceConfig](https://cloud.google.com/compute/docs/reference/rest/v1/instances/updateShieldedInstanceConfig)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/instances/{instance}/updateShieldedInstanceConfig`  
Updates the Shielded Instance config for an instance. |

## REST Resource: [v1.instantSnapshots](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/instantSnapshots`  
Retrieves an aggregated list of instantSnapshots. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/instantSnapshots/{instantSnapshot}`  
Deletes the specified InstantSnapshot resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/instantSnapshots/{instantSnapshot}`  
Returns the specified InstantSnapshot resource in the specified zone. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots/getIamPolicy)` | `GET /compute/v1/projects/{project}/zones/{zone}/instantSnapshots/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/instantSnapshots`  
Creates an instant snapshot in the specified zone. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/instantSnapshots`  
Retrieves the list of InstantSnapshot resources contained within the specified zone. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots/setIamPolicy)` | `POST /compute/v1/projects/{project}/zones/{zone}/instantSnapshots/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots/setLabels)` | `POST /compute/v1/projects/{project}/zones/{zone}/instantSnapshots/{resource}/setLabels`  
Sets the labels on a instantSnapshot in the given zone. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots/testIamPermissions)` | `POST /compute/v1/projects/{project}/zones/{zone}/instantSnapshots/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.interconnectAttachments](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectAttachments)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectAttachments/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/interconnectAttachments`  
Retrieves an aggregated list of interconnect attachments. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectAttachments/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/interconnectAttachments/{interconnectAttachment}`  
Deletes the specified interconnect attachment. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectAttachments/get)` | `GET /compute/v1/projects/{project}/regions/{region}/interconnectAttachments/{interconnectAttachment}`  
Returns the specified interconnect attachment. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectAttachments/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/interconnectAttachments`  
Creates an InterconnectAttachment in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectAttachments/list)` | `GET /compute/v1/projects/{project}/regions/{region}/interconnectAttachments`  
Retrieves the list of interconnect attachments contained within the specified region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectAttachments/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/interconnectAttachments/{interconnectAttachment}`  
Updates the specified interconnect attachment with the data included in the request. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectAttachments/setLabels)` | `POST /compute/v1/projects/{project}/regions/{region}/interconnectAttachments/{resource}/setLabels`  
Sets the labels on an InterconnectAttachment. |

## REST Resource: [v1.interconnectLocations](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectLocations)

 
| Methods |
| --- |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectLocations/get)` | `GET /compute/v1/projects/{project}/global/interconnectLocations/{interconnectLocation}`  
Returns the details for the specified interconnect location. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectLocations/list)` | `GET /compute/v1/projects/{project}/global/interconnectLocations`  
Retrieves the list of interconnect locations available to the specified project. |

## REST Resource: [v1.interconnectRemoteLocations](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectRemoteLocations)

 
| Methods |
| --- |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectRemoteLocations/get)` | `GET /compute/v1/projects/{project}/global/interconnectRemoteLocations/{interconnectRemoteLocation}`  
Returns the details for the specified interconnect remote location. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectRemoteLocations/list)` | `GET /compute/v1/projects/{project}/global/interconnectRemoteLocations`  
Retrieves the list of interconnect remote locations available to the specified project. |

## REST Resource: [v1.interconnects](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects/delete)` | `DELETE /compute/v1/projects/{project}/global/interconnects/{interconnect}`  
Deletes the specified Interconnect. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects/get)` | `GET /compute/v1/projects/{project}/global/interconnects/{interconnect}`  
Returns the specified Interconnect. |
| `[getDiagnostics](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects/getDiagnostics)` | `GET /compute/v1/projects/{project}/global/interconnects/{interconnect}/getDiagnostics`  
Returns the `interconnectDiagnostics` for the specified Interconnect. |
| `[getMacsecConfig](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects/getMacsecConfig)` | `GET /compute/v1/projects/{project}/global/interconnects/{interconnect}/getMacsecConfig`  
Returns the `interconnectMacsecConfig` for the specified Interconnect. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects/insert)` | `POST /compute/v1/projects/{project}/global/interconnects`  
Creates an Interconnect in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects/list)` | `GET /compute/v1/projects/{project}/global/interconnects`  
Retrieves the list of Interconnects available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects/patch)` | `PATCH /compute/v1/projects/{project}/global/interconnects/{interconnect}`  
Updates the specified Interconnect with the data included in the request. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects/setLabels)` | `POST /compute/v1/projects/{project}/global/interconnects/{resource}/setLabels`  
Sets the labels on an Interconnect. |

## REST Resource: [v1.licenseCodes](https://cloud.google.com/compute/docs/reference/rest/v1/licenseCodes)

 
| Methods |
| --- |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/licenseCodes/get)` | `GET /compute/v1/projects/{project}/global/licenseCodes/{licenseCode}`  
Return a specified license code. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/licenseCodes/testIamPermissions)` | `POST /compute/v1/projects/{project}/global/licenseCodes/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.licenses](https://cloud.google.com/compute/docs/reference/rest/v1/licenses)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/licenses/delete)` | `DELETE /compute/v1/projects/{project}/global/licenses/{license}`  
Deletes the specified license. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/licenses/get)` | `GET /compute/v1/projects/{project}/global/licenses/{license}`  
Returns the specified License resource. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/licenses/getIamPolicy)` | `GET /compute/v1/projects/{project}/global/licenses/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/licenses/insert)` | `POST /compute/v1/projects/{project}/global/licenses`  
Create a License resource in the specified project. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/licenses/list)` | `GET /compute/v1/projects/{project}/global/licenses`  
Retrieves the list of licenses available in the specified project. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/licenses/setIamPolicy)` | `POST /compute/v1/projects/{project}/global/licenses/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/licenses/testIamPermissions)` | `POST /compute/v1/projects/{project}/global/licenses/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.machineImages](https://cloud.google.com/compute/docs/reference/rest/v1/machineImages)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/machineImages/delete)` | `DELETE /compute/v1/projects/{project}/global/machineImages/{machineImage}`  
Deletes the specified machine image. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/machineImages/get)` | `GET /compute/v1/projects/{project}/global/machineImages/{machineImage}`  
Returns the specified machine image. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/machineImages/getIamPolicy)` | `GET /compute/v1/projects/{project}/global/machineImages/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/machineImages/insert)` | `POST /compute/v1/projects/{project}/global/machineImages`  
Creates a machine image in the specified project using the data that is included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/machineImages/list)` | `GET /compute/v1/projects/{project}/global/machineImages`  
Retrieves a list of machine images that are contained within the specified project. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/machineImages/setIamPolicy)` | `POST /compute/v1/projects/{project}/global/machineImages/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/machineImages/testIamPermissions)` | `POST /compute/v1/projects/{project}/global/machineImages/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.machineTypes](https://cloud.google.com/compute/docs/reference/rest/v1/machineTypes)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/machineTypes/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/machineTypes`  
Retrieves an aggregated list of machine types. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/machineTypes/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/machineTypes/{machineType}`  
Returns the specified machine type. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/machineTypes/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/machineTypes`  
Retrieves a list of machine types available to the specified project. |

## REST Resource: [v1.networkAttachments](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/networkAttachments`  
Retrieves the list of all `NetworkAttachment` resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/networkAttachments/{networkAttachment}`  
Deletes the specified NetworkAttachment in the given scope |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/get)` | `GET /compute/v1/projects/{project}/regions/{region}/networkAttachments/{networkAttachment}`  
Returns the specified NetworkAttachment resource in the given scope. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/getIamPolicy)` | `GET /compute/v1/projects/{project}/regions/{region}/networkAttachments/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/networkAttachments`  
Creates a NetworkAttachment in the specified project in the given scope using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/list)` | `GET /compute/v1/projects/{project}/regions/{region}/networkAttachments`  
Lists the NetworkAttachments for a project in the given scope. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/networkAttachments/{networkAttachment}`  
Patches the specified NetworkAttachment resource with the data included in the request. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/setIamPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/networkAttachments/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/networkAttachments/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/networkAttachments/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.networkEdgeSecurityServices](https://cloud.google.com/compute/docs/reference/rest/v1/networkEdgeSecurityServices)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/networkEdgeSecurityServices/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/networkEdgeSecurityServices`  
Retrieves the list of all NetworkEdgeSecurityService resources available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/networkEdgeSecurityServices/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/networkEdgeSecurityServices/{networkEdgeSecurityService}`  
Deletes the specified service. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/networkEdgeSecurityServices/get)` | `GET /compute/v1/projects/{project}/regions/{region}/networkEdgeSecurityServices/{networkEdgeSecurityService}`  
Gets a specified NetworkEdgeSecurityService. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/networkEdgeSecurityServices/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/networkEdgeSecurityServices`  
Creates a new service in the specified project using the data included in the request. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/networkEdgeSecurityServices/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/networkEdgeSecurityServices/{networkEdgeSecurityService}`  
Patches the specified policy with the data included in the request. |

## REST Resource: [v1.networkEndpointGroups](https://cloud.google.com/compute/docs/reference/rest/v1/networkEndpointGroups)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/networkEndpointGroups/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/networkEndpointGroups`  
Retrieves the list of network endpoint groups and sorts them by zone. |
| `[attachNetworkEndpoints](https://cloud.google.com/compute/docs/reference/rest/v1/networkEndpointGroups/attachNetworkEndpoints)` | `POST /compute/v1/projects/{project}/zones/{zone}/networkEndpointGroups/{networkEndpointGroup}/attachNetworkEndpoints`  
Attach a list of network endpoints to the specified network endpoint group. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/networkEndpointGroups/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/networkEndpointGroups/{networkEndpointGroup}`  
Deletes the specified network endpoint group. |
| `[detachNetworkEndpoints](https://cloud.google.com/compute/docs/reference/rest/v1/networkEndpointGroups/detachNetworkEndpoints)` | `POST /compute/v1/projects/{project}/zones/{zone}/networkEndpointGroups/{networkEndpointGroup}/detachNetworkEndpoints`  
Detach a list of network endpoints from the specified network endpoint group. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/networkEndpointGroups/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/networkEndpointGroups/{networkEndpointGroup}`  
Returns the specified network endpoint group. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/networkEndpointGroups/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/networkEndpointGroups`  
Creates a network endpoint group in the specified project using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/networkEndpointGroups/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/networkEndpointGroups`  
Retrieves the list of network endpoint groups that are located in the specified project and zone. |
| `[listNetworkEndpoints](https://cloud.google.com/compute/docs/reference/rest/v1/networkEndpointGroups/listNetworkEndpoints)` | `POST /compute/v1/projects/{project}/zones/{zone}/networkEndpointGroups/{networkEndpointGroup}/listNetworkEndpoints`  
Lists the network endpoints in the specified network endpoint group. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/networkEndpointGroups/testIamPermissions)` | `POST /compute/v1/projects/{project}/zones/{zone}/networkEndpointGroups/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.networkFirewallPolicies](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies)

 
| Methods |
| --- |
| `[addAssociation](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/addAssociation)` | `POST /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}/addAssociation`  
Inserts an association for the specified firewall policy. |
| `[addRule](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/addRule)` | `POST /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}/addRule`  
Inserts a rule into a firewall policy. |
| `[cloneRules](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/cloneRules)` | `POST /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}/cloneRules`  
Copies rules to the specified firewall policy. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/delete)` | `DELETE /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}`  
Deletes the specified policy. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/get)` | `GET /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}`  
Returns the specified network firewall policy. |
| `[getAssociation](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/getAssociation)` | `GET /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}/getAssociation`  
Gets an association with the specified name. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/getIamPolicy)` | `GET /compute/v1/projects/{project}/global/firewallPolicies/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[getRule](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/getRule)` | `GET /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}/getRule`  
Gets a rule of the specified priority. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/insert)` | `POST /compute/v1/projects/{project}/global/firewallPolicies`  
Creates a new policy in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/list)` | `GET /compute/v1/projects/{project}/global/firewallPolicies`  
Lists all the policies that have been configured for the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/patch)` | `PATCH /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}`  
Patches the specified policy with the data included in the request. |
| `[patchRule](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/patchRule)` | `POST /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}/patchRule`  
Patches a rule of the specified priority. |
| `[removeAssociation](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/removeAssociation)` | `POST /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}/removeAssociation`  
Removes an association for the specified firewall policy. |
| `[removeRule](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/removeRule)` | `POST /compute/v1/projects/{project}/global/firewallPolicies/{firewallPolicy}/removeRule`  
Deletes a rule of the specified priority. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/setIamPolicy)` | `POST /compute/v1/projects/{project}/global/firewallPolicies/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/testIamPermissions)` | `POST /compute/v1/projects/{project}/global/firewallPolicies/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.networks](https://cloud.google.com/compute/docs/reference/rest/v1/networks)

 
| Methods |
| --- |
| `[addPeering](https://cloud.google.com/compute/docs/reference/rest/v1/networks/addPeering)` | `POST /compute/v1/projects/{project}/global/networks/{network}/addPeering`  
Adds a peering to the specified network. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/networks/delete)` | `DELETE /compute/v1/projects/{project}/global/networks/{network}`  
Deletes the specified network. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/networks/get)` | `GET /compute/v1/projects/{project}/global/networks/{network}`  
Returns the specified network. |
| `[getEffectiveFirewalls](https://cloud.google.com/compute/docs/reference/rest/v1/networks/getEffectiveFirewalls)` | `GET /compute/v1/projects/{project}/global/networks/{network}/getEffectiveFirewalls`  
Returns the effective firewalls on a given network. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert)` | `POST /compute/v1/projects/{project}/global/networks`  
Creates a network in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/networks/list)` | `GET /compute/v1/projects/{project}/global/networks`  
Retrieves the list of networks available to the specified project. |
| `[listPeeringRoutes](https://cloud.google.com/compute/docs/reference/rest/v1/networks/listPeeringRoutes)` | `GET /compute/v1/projects/{project}/global/networks/{network}/listPeeringRoutes`  
Lists the peering routes exchanged over peering connection. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/networks/patch)` | `PATCH /compute/v1/projects/{project}/global/networks/{network}`  
Patches the specified network with the data included in the request. |
| `[removePeering](https://cloud.google.com/compute/docs/reference/rest/v1/networks/removePeering)` | `POST /compute/v1/projects/{project}/global/networks/{network}/removePeering`  
Removes a peering from the specified network. |
| `[switchToCustomMode](https://cloud.google.com/compute/docs/reference/rest/v1/networks/switchToCustomMode)` | `POST /compute/v1/projects/{project}/global/networks/{network}/switchToCustomMode`  
Switches the network mode from auto subnet mode to custom subnet mode. |
| `[updatePeering](https://cloud.google.com/compute/docs/reference/rest/v1/networks/updatePeering)` | `PATCH /compute/v1/projects/{project}/global/networks/{network}/updatePeering`  
Updates the specified network peering with the data included in the request. |

## REST Resource: [v1.nodeGroups](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups)

 
| Methods |
| --- |
| `[addNodes](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/addNodes)` | `POST /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{nodeGroup}/addNodes`  
Adds specified number of nodes to the node group. |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/nodeGroups`  
Retrieves an aggregated list of node groups. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{nodeGroup}`  
Deletes the specified NodeGroup resource. |
| `[deleteNodes](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/deleteNodes)` | `POST /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{nodeGroup}/deleteNodes`  
Deletes specified nodes from the node group. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{nodeGroup}`  
Returns the specified NodeGroup. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/getIamPolicy)` | `GET /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/nodeGroups`  
Creates a NodeGroup resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/nodeGroups`  
Retrieves a list of node groups available to the specified project. |
| `[listNodes](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/listNodes)` | `POST /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{nodeGroup}/listNodes`  
Lists nodes in the node group. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/patch)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{nodeGroup}`  
Updates the specified node group. |
| `[performMaintenance](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/performMaintenance)` | `POST /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{nodeGroup}/performMaintenance`  
Perform maintenance on a subset of nodes in the node group. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/setIamPolicy)` | `POST /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setNodeTemplate](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/setNodeTemplate)` | `POST /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{nodeGroup}/setNodeTemplate`  
Updates the node template of the node group. |
| `[simulateMaintenanceEvent](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/simulateMaintenanceEvent)` | `POST /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{nodeGroup}/simulateMaintenanceEvent`  
Simulates maintenance event on specified nodes from the node group. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups/testIamPermissions)` | `POST /compute/v1/projects/{project}/zones/{zone}/nodeGroups/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.nodeTemplates](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/nodeTemplates`  
Retrieves an aggregated list of node templates. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/nodeTemplates/{nodeTemplate}`  
Deletes the specified NodeTemplate resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates/get)` | `GET /compute/v1/projects/{project}/regions/{region}/nodeTemplates/{nodeTemplate}`  
Returns the specified node template. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates/getIamPolicy)` | `GET /compute/v1/projects/{project}/regions/{region}/nodeTemplates/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/nodeTemplates`  
Creates a NodeTemplate resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates/list)` | `GET /compute/v1/projects/{project}/regions/{region}/nodeTemplates`  
Retrieves a list of node templates available to the specified project. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates/setIamPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/nodeTemplates/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/nodeTemplates/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.nodeTypes](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTypes)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTypes/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/nodeTypes`  
Retrieves an aggregated list of node types. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTypes/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/nodeTypes/{nodeType}`  
Returns the specified node type. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTypes/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/nodeTypes`  
Retrieves a list of node types available to the specified project. |

## REST Resource: [v1.packetMirrorings](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/packetMirrorings`  
Retrieves an aggregated list of packetMirrorings. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/packetMirrorings/{packetMirroring}`  
Deletes the specified PacketMirroring resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings/get)` | `GET /compute/v1/projects/{project}/regions/{region}/packetMirrorings/{packetMirroring}`  
Returns the specified PacketMirroring resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/packetMirrorings`  
Creates a PacketMirroring resource in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings/list)` | `GET /compute/v1/projects/{project}/regions/{region}/packetMirrorings`  
Retrieves a list of PacketMirroring resources available to the specified project and region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/packetMirrorings/{packetMirroring}`  
Patches the specified PacketMirroring resource with the data included in the request. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/packetMirrorings/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/packetMirrorings/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.projects](https://cloud.google.com/compute/docs/reference/rest/v1/projects)

 
| Methods |
| --- |
| `[disableXpnHost](https://cloud.google.com/compute/docs/reference/rest/v1/projects/disableXpnHost)` | `POST /compute/v1/projects/{project}/disableXpnHost`  
Disable this project as a shared VPC host project. |
| `[disableXpnResource](https://cloud.google.com/compute/docs/reference/rest/v1/projects/disableXpnResource)` | `POST /compute/v1/projects/{project}/disableXpnResource`  
Disable a service resource (also known as service project) associated with this host project. |
| `[enableXpnHost](https://cloud.google.com/compute/docs/reference/rest/v1/projects/enableXpnHost)` | `POST /compute/v1/projects/{project}/enableXpnHost`  
Enable this project as a shared VPC host project. |
| `[enableXpnResource](https://cloud.google.com/compute/docs/reference/rest/v1/projects/enableXpnResource)` | `POST /compute/v1/projects/{project}/enableXpnResource`  
Enable service resource (a.k.a service project) for a host project, so that subnets in the host project can be used by instances in the service project. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/projects/get)` | `GET /compute/v1/projects/{project}`  
Returns the specified Project resource. |
| `[getXpnHost](https://cloud.google.com/compute/docs/reference/rest/v1/projects/getXpnHost)` | `GET /compute/v1/projects/{project}/getXpnHost`  
Gets the shared VPC host project that this project links to. |
| `[getXpnResources](https://cloud.google.com/compute/docs/reference/rest/v1/projects/getXpnResources)` | `GET /compute/v1/projects/{project}/getXpnResources`  
Gets service resources (a.k.a service project) associated with this host project. |
| `[listXpnHosts](https://cloud.google.com/compute/docs/reference/rest/v1/projects/listXpnHosts)` | `POST /compute/v1/projects/{project}/listXpnHosts`  
Lists all shared VPC host projects visible to the user in an organization. |
| `[moveDisk](https://cloud.google.com/compute/docs/reference/rest/v1/projects/moveDisk)` | `POST /compute/v1/projects/{project}/moveDisk`  
Moves a persistent disk from one zone to another. |
| `[moveInstance](https://cloud.google.com/compute/docs/reference/rest/v1/projects/moveInstance)   **(deprecated)**` | `POST /compute/v1/projects/{project}/moveInstance`  
Moves an instance and its attached persistent disks from one zone to another. |
| `[setCloudArmorTier](https://cloud.google.com/compute/docs/reference/rest/v1/projects/setCloudArmorTier)` | `POST /compute/v1/projects/{project}/setCloudArmorTier`  
Sets the Cloud Armor tier of the project. |
| `[setCommonInstanceMetadata](https://cloud.google.com/compute/docs/reference/rest/v1/projects/setCommonInstanceMetadata)` | `POST /compute/v1/projects/{project}/setCommonInstanceMetadata`  
Sets metadata common to all instances within the specified project using the data included in the request. |
| `[setDefaultNetworkTier](https://cloud.google.com/compute/docs/reference/rest/v1/projects/setDefaultNetworkTier)` | `POST /compute/v1/projects/{project}/setDefaultNetworkTier`  
Sets the default network tier of the project. |
| `[setUsageExportBucket](https://cloud.google.com/compute/docs/reference/rest/v1/projects/setUsageExportBucket)` | `POST /compute/v1/projects/{project}/setUsageExportBucket`  
Enables the usage export feature and sets the [usage export bucket](https://cloud.google.com/compute/docs/usage-export) where reports are stored. |

## REST Resource: [v1.publicAdvertisedPrefixes](https://cloud.google.com/compute/docs/reference/rest/v1/publicAdvertisedPrefixes)

 
| Methods |
| --- |
| `[announce](https://cloud.google.com/compute/docs/reference/rest/v1/publicAdvertisedPrefixes/announce)` | `POST /compute/v1/projects/{project}/global/publicAdvertisedPrefixes/{publicAdvertisedPrefix}/announce`  
Announces the specified PublicAdvertisedPrefix |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/publicAdvertisedPrefixes/delete)` | `DELETE /compute/v1/projects/{project}/global/publicAdvertisedPrefixes/{publicAdvertisedPrefix}`  
Deletes the specified PublicAdvertisedPrefix |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/publicAdvertisedPrefixes/get)` | `GET /compute/v1/projects/{project}/global/publicAdvertisedPrefixes/{publicAdvertisedPrefix}`  
Returns the specified PublicAdvertisedPrefix resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/publicAdvertisedPrefixes/insert)` | `POST /compute/v1/projects/{project}/global/publicAdvertisedPrefixes`  
Creates a PublicAdvertisedPrefix in the specified project using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/publicAdvertisedPrefixes/list)` | `GET /compute/v1/projects/{project}/global/publicAdvertisedPrefixes`  
Lists the PublicAdvertisedPrefixes for a project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/publicAdvertisedPrefixes/patch)` | `PATCH /compute/v1/projects/{project}/global/publicAdvertisedPrefixes/{publicAdvertisedPrefix}`  
Patches the specified Router resource with the data included in the request. |
| `[withdraw](https://cloud.google.com/compute/docs/reference/rest/v1/publicAdvertisedPrefixes/withdraw)` | `POST /compute/v1/projects/{project}/global/publicAdvertisedPrefixes/{publicAdvertisedPrefix}/withdraw`  
Withdraws the specified PublicAdvertisedPrefix |

## REST Resource: [v1.publicDelegatedPrefixes](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/publicDelegatedPrefixes`  
Lists all PublicDelegatedPrefix resources owned by the specific project across all scopes. |
| `[announce](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes/announce)` | `POST /compute/v1/projects/{project}/regions/{region}/publicDelegatedPrefixes/{publicDelegatedPrefix}/announce`  
Announces the specified PublicDelegatedPrefix in the given region. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/publicDelegatedPrefixes/{publicDelegatedPrefix}`  
Deletes the specified PublicDelegatedPrefix in the given region. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes/get)` | `GET /compute/v1/projects/{project}/regions/{region}/publicDelegatedPrefixes/{publicDelegatedPrefix}`  
Returns the specified PublicDelegatedPrefix resource in the given region. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/publicDelegatedPrefixes`  
Creates a PublicDelegatedPrefix in the specified project in the given region using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes/list)` | `GET /compute/v1/projects/{project}/regions/{region}/publicDelegatedPrefixes`  
Lists the PublicDelegatedPrefixes for a project in the given region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/publicDelegatedPrefixes/{publicDelegatedPrefix}`  
Patches the specified PublicDelegatedPrefix resource with the data included in the request. |
| `[withdraw](https://cloud.google.com/compute/docs/reference/rest/v1/publicDelegatedPrefixes/withdraw)` | `POST /compute/v1/projects/{project}/regions/{region}/publicDelegatedPrefixes/{publicDelegatedPrefix}/withdraw`  
Withdraws the specified PublicDelegatedPrefix in the given region. |

## REST Resource: [v1.regionAutoscalers](https://cloud.google.com/compute/docs/reference/rest/v1/regionAutoscalers)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionAutoscalers/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/autoscalers/{autoscaler}`  
Deletes the specified autoscaler. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionAutoscalers/get)` | `GET /compute/v1/projects/{project}/regions/{region}/autoscalers/{autoscaler}`  
Returns the specified autoscaler. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionAutoscalers/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/autoscalers`  
Creates an autoscaler in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionAutoscalers/list)` | `GET /compute/v1/projects/{project}/regions/{region}/autoscalers`  
Retrieves a list of autoscalers contained within the specified region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/regionAutoscalers/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/autoscalers`  
Updates an autoscaler in the specified project using the data included in the request. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/regionAutoscalers/update)` | `PUT /compute/v1/projects/{project}/regions/{region}/autoscalers`  
Updates an autoscaler in the specified project using the data included in the request. |

## REST Resource: [v1.regionBackendServices](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/backendServices/{backendService}`  
Deletes the specified regional BackendService resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/get)` | `GET /compute/v1/projects/{project}/regions/{region}/backendServices/{backendService}`  
Returns the specified regional BackendService resource. |
| `[getHealth](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/getHealth)` | `POST /compute/v1/projects/{project}/regions/{region}/backendServices/{backendService}/getHealth`  
Gets the most recent health check results for this regional BackendService. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/getIamPolicy)` | `GET /compute/v1/projects/{project}/regions/{region}/backendServices/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/backendServices`  
Creates a regional BackendService resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/list)` | `GET /compute/v1/projects/{project}/regions/{region}/backendServices`  
Retrieves the list of regional BackendService resources available to the specified project in the given region. |
| `[listUsable](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/listUsable)` | `GET /compute/v1/projects/{project}/regions/{region}/backendServices/listUsable`  
Retrieves a list of all usable backend services in the specified project in the given region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/backendServices/{backendService}`  
Updates the specified regional BackendService resource with the data included in the request. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/setIamPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/backendServices/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setSecurityPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/setSecurityPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/backendServices/{backendService}/setSecurityPolicy`  
Sets the Google Cloud Armor security policy for the specified backend service. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/backendServices/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/regionBackendServices/update)` | `PUT /compute/v1/projects/{project}/regions/{region}/backendServices/{backendService}`  
Updates the specified regional BackendService resource with the data included in the request. |

## REST Resource: [v1.regionCommitments](https://cloud.google.com/compute/docs/reference/rest/v1/regionCommitments)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/regionCommitments/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/commitments`  
Retrieves an aggregated list of commitments by region. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionCommitments/get)` | `GET /compute/v1/projects/{project}/regions/{region}/commitments/{commitment}`  
Returns the specified commitment resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionCommitments/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/commitments`  
Creates a commitment in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionCommitments/list)` | `GET /compute/v1/projects/{project}/regions/{region}/commitments`  
Retrieves a list of commitments contained within the specified region. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/regionCommitments/update)` | `PATCH /compute/v1/projects/{project}/regions/{region}/commitments/{commitment}`  
Updates the specified commitment with the data included in the request. |

## REST Resource: [v1.regionDiskTypes](https://cloud.google.com/compute/docs/reference/rest/v1/regionDiskTypes)

 
| Methods |
| --- |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionDiskTypes/get)` | `GET /compute/v1/projects/{project}/regions/{region}/diskTypes/{diskType}`  
Returns the specified regional disk type. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionDiskTypes/list)` | `GET /compute/v1/projects/{project}/regions/{region}/diskTypes`  
Retrieves a list of regional disk types available to the specified project. |

## REST Resource: [v1.regionDisks](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks)

 
| Methods |
| --- |
| `[addResourcePolicies](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/addResourcePolicies)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/{disk}/addResourcePolicies`  
Adds existing resource policies to a regional disk. |
| `[bulkInsert](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/bulkInsert)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/bulkInsert`  
Bulk create a set of disks. |
| `[createSnapshot](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/createSnapshot)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/{disk}/createSnapshot`  
Creates a snapshot of a specified persistent disk. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/disks/{disk}`  
Deletes the specified regional persistent disk. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/get)` | `GET /compute/v1/projects/{project}/regions/{region}/disks/{disk}`  
Returns a specified regional persistent disk. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/getIamPolicy)` | `GET /compute/v1/projects/{project}/regions/{region}/disks/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/disks`  
Creates a persistent regional disk in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/list)` | `GET /compute/v1/projects/{project}/regions/{region}/disks`  
Retrieves the list of persistent disks contained within the specified region. |
| `[removeResourcePolicies](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/removeResourcePolicies)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/{disk}/removeResourcePolicies`  
Removes resource policies from a regional disk. |
| `[resize](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/resize)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/{disk}/resize`  
Resizes the specified regional persistent disk. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/setIamPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/setLabels)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/{resource}/setLabels`  
Sets the labels on the target regional disk. |
| `[startAsyncReplication](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/startAsyncReplication)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/{disk}/startAsyncReplication`  
Starts asynchronous replication. |
| `[stopAsyncReplication](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/stopAsyncReplication)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/{disk}/stopAsyncReplication`  
Stops asynchronous replication. |
| `[stopGroupAsyncReplication](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/stopGroupAsyncReplication)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/stopGroupAsyncReplication`  
Stops asynchronous replication for a consistency group of disks. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/disks/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks/update)` | `PATCH /compute/v1/projects/{project}/regions/{region}/disks/{disk}`  
Update the specified disk with the data included in the request. |

## REST Resource: [v1.regionHealthCheckServices](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthCheckServices)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthCheckServices/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/healthCheckServices/{healthCheckService}`  
Deletes the specified regional HealthCheckService. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthCheckServices/get)` | `GET /compute/v1/projects/{project}/regions/{region}/healthCheckServices/{healthCheckService}`  
Returns the specified regional `HealthCheckService` resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthCheckServices/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/healthCheckServices`  
Creates a regional `HealthCheckService` resource in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthCheckServices/list)` | `GET /compute/v1/projects/{project}/regions/{region}/healthCheckServices`  
Lists all the `HealthCheckService` resources that have been configured for the specified project in the given region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthCheckServices/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/healthCheckServices/{healthCheckService}`  
Updates the specified regional `HealthCheckService` resource with the data included in the request. |

## REST Resource: [v1.regionHealthChecks](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthChecks)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthChecks/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/healthChecks/{healthCheck}`  
Deletes the specified HealthCheck resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthChecks/get)` | `GET /compute/v1/projects/{project}/regions/{region}/healthChecks/{healthCheck}`  
Returns the specified HealthCheck resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthChecks/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/healthChecks`  
Creates a HealthCheck resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthChecks/list)` | `GET /compute/v1/projects/{project}/regions/{region}/healthChecks`  
Retrieves the list of HealthCheck resources available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthChecks/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/healthChecks/{healthCheck}`  
Updates a HealthCheck resource in the specified project using the data included in the request. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthChecks/update)` | `PUT /compute/v1/projects/{project}/regions/{region}/healthChecks/{healthCheck}`  
Updates a HealthCheck resource in the specified project using the data included in the request. |

## REST Resource: [v1.regionInstanceGroupManagers](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers)

 
| Methods |
| --- |
| `[abandonInstances](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/abandonInstances)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/abandonInstances`  
Flags the specified instances to be immediately removed from the managed instance group. |
| `[applyUpdatesToInstances](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/applyUpdatesToInstances)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/applyUpdatesToInstances`  
Apply updates to selected instances the managed instance group. |
| `[createInstances](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/createInstances)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/createInstances`  
Creates instances with per-instance configurations in this regional managed instance group. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}`  
Deletes the specified managed instance group and all of the instances in that group. |
| `[deleteInstances](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/deleteInstances)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/deleteInstances`  
Flags the specified instances in the managed instance group to be immediately deleted. |
| `[deletePerInstanceConfigs](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/deletePerInstanceConfigs)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/deletePerInstanceConfigs`  
Deletes selected per-instance configurations for the managed instance group. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/get)` | `GET /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}`  
Returns all of the details about the specified managed instance group. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers`  
Creates a managed instance group using the information that you specify in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/list)` | `GET /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers`  
Retrieves the list of managed instance groups that are contained within the specified region. |
| `[listErrors](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/listErrors)` | `GET /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/listErrors`  
Lists all errors thrown by actions on instances for a given regional managed instance group. |
| `[listManagedInstances](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/listManagedInstances)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/listManagedInstances`  
Lists the instances in the managed instance group and instances that are scheduled to be created. |
| `[listPerInstanceConfigs](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/listPerInstanceConfigs)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/listPerInstanceConfigs`  
Lists all of the per-instance configurations defined for the managed instance group. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}`  
Updates a managed instance group using the information that you specify in the request. |
| `[patchPerInstanceConfigs](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/patchPerInstanceConfigs)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/patchPerInstanceConfigs`  
Inserts or patches per-instance configurations for the managed instance group. |
| `[recreateInstances](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/recreateInstances)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/recreateInstances`  
Flags the specified VM instances in the managed instance group to be immediately recreated. |
| `[resize](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/resize)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/resize`  
Changes the intended size of the managed instance group. |
| `[setInstanceTemplate](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/setInstanceTemplate)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/setInstanceTemplate`  
Sets the instance template to use when creating new instances or recreating instances in this group. |
| `[setTargetPools](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/setTargetPools)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/setTargetPools`  
Modifies the target pools to which all new instances in this group are assigned. |
| `[updatePerInstanceConfigs](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers/updatePerInstanceConfigs)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/updatePerInstanceConfigs`  
Inserts or updates per-instance configurations for the managed instance group. |

## REST Resource: [v1.regionInstanceGroups](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroups)

 
| Methods |
| --- |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroups/get)` | `GET /compute/v1/projects/{project}/regions/{region}/instanceGroups/{instanceGroup}`  
Returns the specified instance group resource. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroups/list)` | `GET /compute/v1/projects/{project}/regions/{region}/instanceGroups`  
Retrieves the list of instance group resources contained within the specified region. |
| `[listInstances](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroups/listInstances)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroups/{instanceGroup}/listInstances`  
Lists the instances in the specified instance group and displays information about the named ports. |
| `[setNamedPorts](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroups/setNamedPorts)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceGroups/{instanceGroup}/setNamedPorts`  
Sets the named ports for the specified regional instance group. |

## REST Resource: [v1.regionInstanceTemplates](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/instanceTemplates/{instanceTemplate}`  
Deletes the specified instance template. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates/get)` | `GET /compute/v1/projects/{project}/regions/{region}/instanceTemplates/{instanceTemplate}`  
Returns the specified instance template. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/instanceTemplates`  
Creates an instance template in the specified project and region using the global instance template whose URL is included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates/list)` | `GET /compute/v1/projects/{project}/regions/{region}/instanceTemplates`  
Retrieves a list of instance templates that are contained within the specified project and region. |

## REST Resource: [v1.regionInstances](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstances)

 
| Methods |
| --- |
| `[bulkInsert](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstances/bulkInsert)` | `POST /compute/v1/projects/{project}/regions/{region}/instances/bulkInsert`  
Creates multiple instances in a given region. |

## REST Resource: [v1.regionInstantSnapshots](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstantSnapshots)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstantSnapshots/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/instantSnapshots/{instantSnapshot}`  
Deletes the specified InstantSnapshot resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstantSnapshots/get)` | `GET /compute/v1/projects/{project}/regions/{region}/instantSnapshots/{instantSnapshot}`  
Returns the specified InstantSnapshot resource in the specified region. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstantSnapshots/getIamPolicy)` | `GET /compute/v1/projects/{project}/regions/{region}/instantSnapshots/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstantSnapshots/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/instantSnapshots`  
Creates an instant snapshot in the specified region. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstantSnapshots/list)` | `GET /compute/v1/projects/{project}/regions/{region}/instantSnapshots`  
Retrieves the list of InstantSnapshot resources contained within the specified region. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstantSnapshots/setIamPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/instantSnapshots/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstantSnapshots/setLabels)` | `POST /compute/v1/projects/{project}/regions/{region}/instantSnapshots/{resource}/setLabels`  
Sets the labels on a instantSnapshot in the given region. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstantSnapshots/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/instantSnapshots/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.regionNetworkEndpointGroups](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkEndpointGroups)

 
| Methods |
| --- |
| `[attachNetworkEndpoints](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkEndpointGroups/attachNetworkEndpoints)` | `POST /compute/v1/projects/{project}/regions/{region}/networkEndpointGroups/{networkEndpointGroup}/attachNetworkEndpoints`  
Attach a list of network endpoints to the specified network endpoint group. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkEndpointGroups/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/networkEndpointGroups/{networkEndpointGroup}`  
Deletes the specified network endpoint group. |
| `[detachNetworkEndpoints](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkEndpointGroups/detachNetworkEndpoints)` | `POST /compute/v1/projects/{project}/regions/{region}/networkEndpointGroups/{networkEndpointGroup}/detachNetworkEndpoints`  
Detach the network endpoint from the specified network endpoint group. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkEndpointGroups/get)` | `GET /compute/v1/projects/{project}/regions/{region}/networkEndpointGroups/{networkEndpointGroup}`  
Returns the specified network endpoint group. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkEndpointGroups/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/networkEndpointGroups`  
Creates a network endpoint group in the specified project using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkEndpointGroups/list)` | `GET /compute/v1/projects/{project}/regions/{region}/networkEndpointGroups`  
Retrieves the list of regional network endpoint groups available to the specified project in the given region. |
| `[listNetworkEndpoints](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkEndpointGroups/listNetworkEndpoints)` | `POST /compute/v1/projects/{project}/regions/{region}/networkEndpointGroups/{networkEndpointGroup}/listNetworkEndpoints`  
Lists the network endpoints in the specified network endpoint group. |

## REST Resource: [v1.regionNetworkFirewallPolicies](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies)

 
| Methods |
| --- |
| `[addAssociation](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/addAssociation)` | `POST /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}/addAssociation`  
Inserts an association for the specified network firewall policy. |
| `[addRule](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/addRule)` | `POST /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}/addRule`  
Inserts a rule into a network firewall policy. |
| `[cloneRules](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/cloneRules)` | `POST /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}/cloneRules`  
Copies rules to the specified network firewall policy. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}`  
Deletes the specified network firewall policy. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/get)` | `GET /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}`  
Returns the specified network firewall policy. |
| `[getAssociation](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/getAssociation)` | `GET /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}/getAssociation`  
Gets an association with the specified name. |
| `[getEffectiveFirewalls](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/getEffectiveFirewalls)` | `GET /compute/v1/projects/{project}/regions/{region}/firewallPolicies/getEffectiveFirewalls`  
Returns the effective firewalls on a given network. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/getIamPolicy)` | `GET /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[getRule](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/getRule)` | `GET /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}/getRule`  
Gets a rule of the specified priority. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/firewallPolicies`  
Creates a new network firewall policy in the specified project and region. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/list)` | `GET /compute/v1/projects/{project}/regions/{region}/firewallPolicies`  
Lists all the network firewall policies that have been configured for the specified project in the given region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}`  
Patches the specified network firewall policy. |
| `[patchRule](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/patchRule)` | `POST /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}/patchRule`  
Patches a rule of the specified priority. |
| `[removeAssociation](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/removeAssociation)` | `POST /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}/removeAssociation`  
Removes an association for the specified network firewall policy. |
| `[removeRule](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/removeRule)` | `POST /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{firewallPolicy}/removeRule`  
Deletes a rule of the specified priority. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/setIamPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/firewallPolicies/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.regionNotificationEndpoints](https://cloud.google.com/compute/docs/reference/rest/v1/regionNotificationEndpoints)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionNotificationEndpoints/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/notificationEndpoints/{notificationEndpoint}`  
Deletes the specified NotificationEndpoint in the given region |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionNotificationEndpoints/get)` | `GET /compute/v1/projects/{project}/regions/{region}/notificationEndpoints/{notificationEndpoint}`  
Returns the specified NotificationEndpoint resource in the given region. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionNotificationEndpoints/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/notificationEndpoints`  
Create a NotificationEndpoint in the specified project in the given region using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionNotificationEndpoints/list)` | `GET /compute/v1/projects/{project}/regions/{region}/notificationEndpoints`  
Lists the NotificationEndpoints for a project in the given region. |

## REST Resource: [v1.regionOperations](https://cloud.google.com/compute/docs/reference/rest/v1/regionOperations)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionOperations/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/operations/{operation}`  
Deletes the specified region-specific Operations resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionOperations/get)` | `GET /compute/v1/projects/{project}/regions/{region}/operations/{operation}`  
Retrieves the specified region-specific Operations resource. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionOperations/list)` | `GET /compute/v1/projects/{project}/regions/{region}/operations`  
Retrieves a list of Operation resources contained within the specified region. |
| `[wait](https://cloud.google.com/compute/docs/reference/rest/v1/regionOperations/wait)` | `POST /compute/v1/projects/{project}/regions/{region}/operations/{operation}/wait`  
Waits for the specified Operation resource to return as `DONE` or for the request to approach the 2 minute deadline, and retrieves the specified Operation resource. |

## REST Resource: [v1.regionSecurityPolicies](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies)

 
| Methods |
| --- |
| `[addRule](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies/addRule)` | `POST /compute/v1/projects/{project}/regions/{region}/securityPolicies/{securityPolicy}/addRule`  
Inserts a rule into a security policy. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/securityPolicies/{securityPolicy}`  
Deletes the specified policy. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies/get)` | `GET /compute/v1/projects/{project}/regions/{region}/securityPolicies/{securityPolicy}`  
List all of the ordered rules present in a single specified policy. |
| `[getRule](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies/getRule)` | `GET /compute/v1/projects/{project}/regions/{region}/securityPolicies/{securityPolicy}/getRule`  
Gets a rule at the specified priority. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/securityPolicies`  
Creates a new policy in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies/list)` | `GET /compute/v1/projects/{project}/regions/{region}/securityPolicies`  
List all the policies that have been configured for the specified project and region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/securityPolicies/{securityPolicy}`  
Patches the specified policy with the data included in the request. |
| `[patchRule](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies/patchRule)` | `POST /compute/v1/projects/{project}/regions/{region}/securityPolicies/{securityPolicy}/patchRule`  
Patches a rule at the specified priority. |
| `[removeRule](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies/removeRule)` | `POST /compute/v1/projects/{project}/regions/{region}/securityPolicies/{securityPolicy}/removeRule`  
Deletes a rule at the specified priority. |

## REST Resource: [v1.regionSslCertificates](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslCertificates)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslCertificates/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/sslCertificates/{sslCertificate}`  
Deletes the specified SslCertificate resource in the region. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslCertificates/get)` | `GET /compute/v1/projects/{project}/regions/{region}/sslCertificates/{sslCertificate}`  
Returns the specified SslCertificate resource in the specified region. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslCertificates/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/sslCertificates`  
Creates a SslCertificate resource in the specified project and region using the data included in the request |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslCertificates/list)` | `GET /compute/v1/projects/{project}/regions/{region}/sslCertificates`  
Retrieves the list of SslCertificate resources available to the specified project in the specified region. |

## REST Resource: [v1.regionSslPolicies](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslPolicies)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslPolicies/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/sslPolicies/{sslPolicy}`  
Deletes the specified SSL policy. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslPolicies/get)` | `GET /compute/v1/projects/{project}/regions/{region}/sslPolicies/{sslPolicy}`  
Lists all of the ordered rules present in a single specified policy. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslPolicies/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/sslPolicies`  
Creates a new policy in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslPolicies/list)` | `GET /compute/v1/projects/{project}/regions/{region}/sslPolicies`  
Lists all the SSL policies that have been configured for the specified project and region. |
| `[listAvailableFeatures](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslPolicies/listAvailableFeatures)` | `GET /compute/v1/projects/{project}/regions/{region}/sslPolicies/listAvailableFeatures`  
Lists all features that can be specified in the SSL policy when using custom profile. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslPolicies/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/sslPolicies/{sslPolicy}`  
Patches the specified SSL policy with the data included in the request. |

## REST Resource: [v1.regionTargetHttpProxies](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpProxies)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpProxies/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/targetHttpProxies/{targetHttpProxy}`  
Deletes the specified TargetHttpProxy resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpProxies/get)` | `GET /compute/v1/projects/{project}/regions/{region}/targetHttpProxies/{targetHttpProxy}`  
Returns the specified TargetHttpProxy resource in the specified region. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpProxies/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/targetHttpProxies`  
Creates a TargetHttpProxy resource in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpProxies/list)` | `GET /compute/v1/projects/{project}/regions/{region}/targetHttpProxies`  
Retrieves the list of TargetHttpProxy resources available to the specified project in the specified region. |
| `[setUrlMap](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpProxies/setUrlMap)` | `POST /compute/v1/projects/{project}/regions/{region}/targetHttpProxies/{targetHttpProxy}/setUrlMap`  
Changes the URL map for TargetHttpProxy. |

## REST Resource: [v1.regionTargetHttpsProxies](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/targetHttpsProxies/{targetHttpsProxy}`  
Deletes the specified TargetHttpsProxy resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies/get)` | `GET /compute/v1/projects/{project}/regions/{region}/targetHttpsProxies/{targetHttpsProxy}`  
Returns the specified TargetHttpsProxy resource in the specified region. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/targetHttpsProxies`  
Creates a TargetHttpsProxy resource in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies/list)` | `GET /compute/v1/projects/{project}/regions/{region}/targetHttpsProxies`  
Retrieves the list of TargetHttpsProxy resources available to the specified project in the specified region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/targetHttpsProxies/{targetHttpsProxy}`  
Patches the specified regional TargetHttpsProxy resource with the data included in the request. |
| `[setSslCertificates](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies/setSslCertificates)` | `POST /compute/v1/projects/{project}/regions/{region}/targetHttpsProxies/{targetHttpsProxy}/setSslCertificates`  
Replaces SslCertificates for TargetHttpsProxy. |
| `[setUrlMap](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies/setUrlMap)` | `POST /compute/v1/projects/{project}/regions/{region}/targetHttpsProxies/{targetHttpsProxy}/setUrlMap`  
Changes the URL map for TargetHttpsProxy. |

## REST Resource: [v1.regionTargetTcpProxies](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetTcpProxies)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetTcpProxies/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/targetTcpProxies/{targetTcpProxy}`  
Deletes the specified TargetTcpProxy resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetTcpProxies/get)` | `GET /compute/v1/projects/{project}/regions/{region}/targetTcpProxies/{targetTcpProxy}`  
Returns the specified TargetTcpProxy resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetTcpProxies/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/targetTcpProxies`  
Creates a TargetTcpProxy resource in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetTcpProxies/list)` | `GET /compute/v1/projects/{project}/regions/{region}/targetTcpProxies`  
Retrieves a list of `TargetTcpProxy` resources available to the specified project in a given region. |

## REST Resource: [v1.regionUrlMaps](https://cloud.google.com/compute/docs/reference/rest/v1/regionUrlMaps)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/regionUrlMaps/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/urlMaps/{urlMap}`  
Deletes the specified UrlMap resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regionUrlMaps/get)` | `GET /compute/v1/projects/{project}/regions/{region}/urlMaps/{urlMap}`  
Returns the specified UrlMap resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/regionUrlMaps/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/urlMaps`  
Creates a UrlMap resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionUrlMaps/list)` | `GET /compute/v1/projects/{project}/regions/{region}/urlMaps`  
Retrieves the list of UrlMap resources available to the specified project in the specified region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/regionUrlMaps/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/urlMaps/{urlMap}`  
Patches the specified UrlMap resource with the data included in the request. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/regionUrlMaps/update)` | `PUT /compute/v1/projects/{project}/regions/{region}/urlMaps/{urlMap}`  
Updates the specified UrlMap resource with the data included in the request. |
| `[validate](https://cloud.google.com/compute/docs/reference/rest/v1/regionUrlMaps/validate)` | `POST /compute/v1/projects/{project}/regions/{region}/urlMaps/{urlMap}/validate`  
Runs static validation for the UrlMap. |

## REST Resource: [v1.regionZones](https://cloud.google.com/compute/docs/reference/rest/v1/regionZones)

 
| Methods |
| --- |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regionZones/list)` | `GET /compute/v1/projects/{project}/regions/{region}/zones`  
Retrieves the list of Zone resources under the specific region available to the specified project. |

## REST Resource: [v1.regions](https://cloud.google.com/compute/docs/reference/rest/v1/regions)

 
| Methods |
| --- |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/regions/get)` | `GET /compute/v1/projects/{project}/regions/{region}`  
Returns the specified Region resource. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/regions/list)` | `GET /compute/v1/projects/{project}/regions`  
Retrieves the list of region resources available to the specified project. |

## REST Resource: [v1.reservations](https://cloud.google.com/compute/docs/reference/rest/v1/reservations)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/reservations/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/reservations`  
Retrieves an aggregated list of reservations. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/reservations/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/reservations/{reservation}`  
Deletes the specified reservation. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/reservations/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/reservations/{reservation}`  
Retrieves information about the specified reservation. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/reservations/getIamPolicy)` | `GET /compute/v1/projects/{project}/zones/{zone}/reservations/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/reservations/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/reservations`  
Creates a new reservation. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/reservations/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/reservations`  
A list of all the reservations that have been configured for the specified project in specified zone. |
| `[resize](https://cloud.google.com/compute/docs/reference/rest/v1/reservations/resize)` | `POST /compute/v1/projects/{project}/zones/{zone}/reservations/{reservation}/resize`  
Resizes the reservation (applicable to standalone reservations only). |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/reservations/setIamPolicy)` | `POST /compute/v1/projects/{project}/zones/{zone}/reservations/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/reservations/testIamPermissions)` | `POST /compute/v1/projects/{project}/zones/{zone}/reservations/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/reservations/update)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/reservations/{reservation}`  
Update share settings of the reservation. |

## REST Resource: [v1.resourcePolicies](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/resourcePolicies`  
Retrieves an aggregated list of resource policies. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/resourcePolicies/{resourcePolicy}`  
Deletes the specified resource policy. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies/get)` | `GET /compute/v1/projects/{project}/regions/{region}/resourcePolicies/{resourcePolicy}`  
Retrieves all information of the specified resource policy. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies/getIamPolicy)` | `GET /compute/v1/projects/{project}/regions/{region}/resourcePolicies/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/resourcePolicies`  
Creates a new resource policy. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies/list)` | `GET /compute/v1/projects/{project}/regions/{region}/resourcePolicies`  
A list all the resource policies that have been configured for the specified project in specified region. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/resourcePolicies/{resourcePolicy}`  
Modify the specified resource policy. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies/setIamPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/resourcePolicies/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/resourcePolicies/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.routers](https://cloud.google.com/compute/docs/reference/rest/v1/routers)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/routers/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/routers`  
Retrieves an aggregated list of routers. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/routers/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/routers/{router}`  
Deletes the specified Router resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/routers/get)` | `GET /compute/v1/projects/{project}/regions/{region}/routers/{router}`  
Returns the specified Router resource. |
| `[getNatIpInfo](https://cloud.google.com/compute/docs/reference/rest/v1/routers/getNatIpInfo)` | `GET /compute/v1/projects/{project}/regions/{region}/routers/{router}/getNatIpInfo`  
Retrieves runtime NAT IP information. |
| `[getNatMappingInfo](https://cloud.google.com/compute/docs/reference/rest/v1/routers/getNatMappingInfo)` | `GET /compute/v1/projects/{project}/regions/{region}/routers/{router}/getNatMappingInfo`  
Retrieves runtime Nat mapping information of VM endpoints. |
| `[getRouterStatus](https://cloud.google.com/compute/docs/reference/rest/v1/routers/getRouterStatus)` | `GET /compute/v1/projects/{project}/regions/{region}/routers/{router}/getRouterStatus`  
Retrieves runtime information of the specified router. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/routers/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/routers`  
Creates a Router resource in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/routers/list)` | `GET /compute/v1/projects/{project}/regions/{region}/routers`  
Retrieves a list of Router resources available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/routers/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/routers/{router}`  
Patches the specified Router resource with the data included in the request. |
| `[preview](https://cloud.google.com/compute/docs/reference/rest/v1/routers/preview)` | `POST /compute/v1/projects/{project}/regions/{region}/routers/{router}/preview`  
Preview fields auto-generated during router `create` and `update` operations. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/routers/update)` | `PUT /compute/v1/projects/{project}/regions/{region}/routers/{router}`  
Updates the specified Router resource with the data included in the request. |

## REST Resource: [v1.routes](https://cloud.google.com/compute/docs/reference/rest/v1/routes)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/routes/delete)` | `DELETE /compute/v1/projects/{project}/global/routes/{route}`  
Deletes the specified Route resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/routes/get)` | `GET /compute/v1/projects/{project}/global/routes/{route}`  
Returns the specified Route resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/routes/insert)` | `POST /compute/v1/projects/{project}/global/routes`  
Creates a Route resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/routes/list)` | `GET /compute/v1/projects/{project}/global/routes`  
Retrieves the list of Route resources available to the specified project. |

## REST Resource: [v1.securityPolicies](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies)

 
| Methods |
| --- |
| `[addRule](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/addRule)` | `POST /compute/v1/projects/{project}/global/securityPolicies/{securityPolicy}/addRule`  
Inserts a rule into a security policy. |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/securityPolicies`  
Retrieves the list of all SecurityPolicy resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/delete)` | `DELETE /compute/v1/projects/{project}/global/securityPolicies/{securityPolicy}`  
Deletes the specified policy. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/get)` | `GET /compute/v1/projects/{project}/global/securityPolicies/{securityPolicy}`  
List all of the ordered rules present in a single specified policy. |
| `[getRule](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/getRule)` | `GET /compute/v1/projects/{project}/global/securityPolicies/{securityPolicy}/getRule`  
Gets a rule at the specified priority. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/insert)` | `POST /compute/v1/projects/{project}/global/securityPolicies`  
Creates a new policy in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/list)` | `GET /compute/v1/projects/{project}/global/securityPolicies`  
List all the policies that have been configured for the specified project. |
| `[listPreconfiguredExpressionSets](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/listPreconfiguredExpressionSets)` | `GET /compute/v1/projects/{project}/global/securityPolicies/listPreconfiguredExpressionSets`  
Gets the current list of preconfigured Web Application Firewall (WAF) expressions. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/patch)` | `PATCH /compute/v1/projects/{project}/global/securityPolicies/{securityPolicy}`  
Patches the specified policy with the data included in the request. |
| `[patchRule](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/patchRule)` | `POST /compute/v1/projects/{project}/global/securityPolicies/{securityPolicy}/patchRule`  
Patches a rule at the specified priority. |
| `[removeRule](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/removeRule)` | `POST /compute/v1/projects/{project}/global/securityPolicies/{securityPolicy}/removeRule`  
Deletes a rule at the specified priority. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/setLabels)` | `POST /compute/v1/projects/{project}/global/securityPolicies/{resource}/setLabels`  
Sets the labels on a security policy. |

## REST Resource: [v1.serviceAttachments](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/serviceAttachments`  
Retrieves the list of all `ServiceAttachment` resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/serviceAttachments/{serviceAttachment}`  
Deletes the specified ServiceAttachment in the given scope |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/get)` | `GET /compute/v1/projects/{project}/regions/{region}/serviceAttachments/{serviceAttachment}`  
Returns the specified ServiceAttachment resource in the given scope. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/getIamPolicy)` | `GET /compute/v1/projects/{project}/regions/{region}/serviceAttachments/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/serviceAttachments`  
Creates a ServiceAttachment in the specified project in the given scope using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/list)` | `GET /compute/v1/projects/{project}/regions/{region}/serviceAttachments`  
Lists the ServiceAttachments for a project in the given scope. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/serviceAttachments/{serviceAttachment}`  
Patches the specified ServiceAttachment resource with the data included in the request. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/setIamPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/serviceAttachments/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/serviceAttachments/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.snapshotSettings](https://cloud.google.com/compute/docs/reference/rest/v1/snapshotSettings)

 
| Methods |
| --- |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/snapshotSettings/get)` | `GET /compute/v1/projects/{project}/global/snapshotSettings`  
Get snapshot settings. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/snapshotSettings/patch)` | `PATCH /compute/v1/projects/{project}/global/snapshotSettings`  
Patch snapshot settings. |

## REST Resource: [v1.snapshots](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/delete)` | `DELETE /compute/v1/projects/{project}/global/snapshots/{snapshot}`  
Deletes the specified Snapshot resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/get)` | `GET /compute/v1/projects/{project}/global/snapshots/{snapshot}`  
Returns the specified Snapshot resource. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/getIamPolicy)` | `GET /compute/v1/projects/{project}/global/snapshots/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/insert)` | `POST /compute/v1/projects/{project}/global/snapshots`  
Creates a snapshot in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/list)` | `GET /compute/v1/projects/{project}/global/snapshots`  
Retrieves the list of Snapshot resources contained within the specified project. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/setIamPolicy)` | `POST /compute/v1/projects/{project}/global/snapshots/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/setLabels)` | `POST /compute/v1/projects/{project}/global/snapshots/{resource}/setLabels`  
Sets the labels on a snapshot. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/testIamPermissions)` | `POST /compute/v1/projects/{project}/global/snapshots/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.sslCertificates](https://cloud.google.com/compute/docs/reference/rest/v1/sslCertificates)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/sslCertificates/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/sslCertificates`  
Retrieves the list of all SslCertificate resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/sslCertificates/delete)` | `DELETE /compute/v1/projects/{project}/global/sslCertificates/{sslCertificate}`  
Deletes the specified SslCertificate resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/sslCertificates/get)` | `GET /compute/v1/projects/{project}/global/sslCertificates/{sslCertificate}`  
Returns the specified SslCertificate resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/sslCertificates/insert)` | `POST /compute/v1/projects/{project}/global/sslCertificates`  
Creates a SslCertificate resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/sslCertificates/list)` | `GET /compute/v1/projects/{project}/global/sslCertificates`  
Retrieves the list of SslCertificate resources available to the specified project. |

## REST Resource: [v1.sslPolicies](https://cloud.google.com/compute/docs/reference/rest/v1/sslPolicies)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/sslPolicies/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/sslPolicies`  
Retrieves the list of all SslPolicy resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/sslPolicies/delete)` | `DELETE /compute/v1/projects/{project}/global/sslPolicies/{sslPolicy}`  
Deletes the specified SSL policy. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/sslPolicies/get)` | `GET /compute/v1/projects/{project}/global/sslPolicies/{sslPolicy}`  
Lists all of the ordered rules present in a single specified policy. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/sslPolicies/insert)` | `POST /compute/v1/projects/{project}/global/sslPolicies`  
Returns the specified SSL policy resource. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/sslPolicies/list)` | `GET /compute/v1/projects/{project}/global/sslPolicies`  
Lists all the SSL policies that have been configured for the specified project. |
| `[listAvailableFeatures](https://cloud.google.com/compute/docs/reference/rest/v1/sslPolicies/listAvailableFeatures)` | `GET /compute/v1/projects/{project}/global/sslPolicies/listAvailableFeatures`  
Lists all features that can be specified in the SSL policy when using custom profile. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/sslPolicies/patch)` | `PATCH /compute/v1/projects/{project}/global/sslPolicies/{sslPolicy}`  
Patches the specified SSL policy with the data included in the request. |

## REST Resource: [v1.storagePoolTypes](https://cloud.google.com/compute/docs/reference/rest/v1/storagePoolTypes)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/storagePoolTypes/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/storagePoolTypes`  
Retrieves an aggregated list of storage pool types. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/storagePoolTypes/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/storagePoolTypes/{storagePoolType}`  
Returns the specified storage pool type. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/storagePoolTypes/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/storagePoolTypes`  
Retrieves a list of storage pool types available to the specified project. |

## REST Resource: [v1.storagePools](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/storagePools`  
Retrieves an aggregated list of storage pools. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/storagePools/{storagePool}`  
Deletes the specified storage pool. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/storagePools/{storagePool}`  
Returns a specified storage pool. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools/getIamPolicy)` | `GET /compute/v1/projects/{project}/zones/{zone}/storagePools/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/storagePools`  
Creates a storage pool in the specified project using the data in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/storagePools`  
Retrieves a list of storage pools contained within the specified zone. |
| `[listDisks](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools/listDisks)` | `GET /compute/v1/projects/{project}/zones/{zone}/storagePools/{storagePool}/listDisks`  
Lists the disks in a specified storage pool. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools/setIamPolicy)` | `POST /compute/v1/projects/{project}/zones/{zone}/storagePools/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools/testIamPermissions)` | `POST /compute/v1/projects/{project}/zones/{zone}/storagePools/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools/update)` | `PATCH /compute/v1/projects/{project}/zones/{zone}/storagePools/{storagePool}`  
Updates the specified storagePool with the data included in the request. |

## REST Resource: [v1.subnetworks](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/subnetworks`  
Retrieves an aggregated list of subnetworks. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork}`  
Deletes the specified subnetwork. |
| `[expandIpCidrRange](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/expandIpCidrRange)` | `POST /compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork}/expandIpCidrRange`  
Expands the IP CIDR range of the subnetwork to a specified value. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/get)` | `GET /compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork}`  
Returns the specified subnetwork. |
| `[getIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/getIamPolicy)` | `GET /compute/v1/projects/{project}/regions/{region}/subnetworks/{resource}/getIamPolicy`  
Gets the access control policy for a resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/subnetworks`  
Creates a subnetwork in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/list)` | `GET /compute/v1/projects/{project}/regions/{region}/subnetworks`  
Retrieves a list of subnetworks available to the specified project. |
| `[listUsable](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/listUsable)` | `GET /compute/v1/projects/{project}/aggregated/subnetworks/listUsable`  
Retrieves an aggregated list of all usable subnetworks in the project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/patch)` | `PATCH /compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork}`  
Patches the specified subnetwork with the data included in the request. |
| `[setIamPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/setIamPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/subnetworks/{resource}/setIamPolicy`  
Sets the access control policy on the specified resource. |
| `[setPrivateIpGoogleAccess](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/setPrivateIpGoogleAccess)` | `POST /compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork}/setPrivateIpGoogleAccess`  
Set whether VMs in this subnet can access Google services without assigning external IP addresses through Private Google Access. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/subnetworks/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.targetGrpcProxies](https://cloud.google.com/compute/docs/reference/rest/v1/targetGrpcProxies)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/targetGrpcProxies/delete)` | `DELETE /compute/v1/projects/{project}/global/targetGrpcProxies/{targetGrpcProxy}`  
Deletes the specified TargetGrpcProxy in the given scope |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/targetGrpcProxies/get)` | `GET /compute/v1/projects/{project}/global/targetGrpcProxies/{targetGrpcProxy}`  
Returns the specified TargetGrpcProxy resource in the given scope. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/targetGrpcProxies/insert)` | `POST /compute/v1/projects/{project}/global/targetGrpcProxies`  
Creates a TargetGrpcProxy in the specified project in the given scope using the parameters that are included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/targetGrpcProxies/list)` | `GET /compute/v1/projects/{project}/global/targetGrpcProxies`  
Lists the TargetGrpcProxies for a project in the given scope. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/targetGrpcProxies/patch)` | `PATCH /compute/v1/projects/{project}/global/targetGrpcProxies/{targetGrpcProxy}`  
Patches the specified TargetGrpcProxy resource with the data included in the request. |

## REST Resource: [v1.targetHttpProxies](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpProxies)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpProxies/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/targetHttpProxies`  
Retrieves the list of all TargetHttpProxy resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpProxies/delete)` | `DELETE /compute/v1/projects/{project}/global/targetHttpProxies/{targetHttpProxy}`  
Deletes the specified TargetHttpProxy resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpProxies/get)` | `GET /compute/v1/projects/{project}/global/targetHttpProxies/{targetHttpProxy}`  
Returns the specified TargetHttpProxy resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpProxies/insert)` | `POST /compute/v1/projects/{project}/global/targetHttpProxies`  
Creates a TargetHttpProxy resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpProxies/list)` | `GET /compute/v1/projects/{project}/global/targetHttpProxies`  
Retrieves the list of TargetHttpProxy resources available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpProxies/patch)` | `PATCH /compute/v1/projects/{project}/global/targetHttpProxies/{targetHttpProxy}`  
Patches the specified TargetHttpProxy resource with the data included in the request. |
| `[setUrlMap](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpProxies/setUrlMap)` | `POST /compute/v1/projects/{project}/targetHttpProxies/{targetHttpProxy}/setUrlMap`  
Changes the URL map for TargetHttpProxy. |

## REST Resource: [v1.targetHttpsProxies](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/targetHttpsProxies`  
Retrieves the list of all TargetHttpsProxy resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/delete)` | `DELETE /compute/v1/projects/{project}/global/targetHttpsProxies/{targetHttpsProxy}`  
Deletes the specified TargetHttpsProxy resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/get)` | `GET /compute/v1/projects/{project}/global/targetHttpsProxies/{targetHttpsProxy}`  
Returns the specified TargetHttpsProxy resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/insert)` | `POST /compute/v1/projects/{project}/global/targetHttpsProxies`  
Creates a TargetHttpsProxy resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/list)` | `GET /compute/v1/projects/{project}/global/targetHttpsProxies`  
Retrieves the list of TargetHttpsProxy resources available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/patch)` | `PATCH /compute/v1/projects/{project}/global/targetHttpsProxies/{targetHttpsProxy}`  
Patches the specified TargetHttpsProxy resource with the data included in the request. |
| `[setCertificateMap](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/setCertificateMap)` | `POST /compute/v1/projects/{project}/global/targetHttpsProxies/{targetHttpsProxy}/setCertificateMap`  
Changes the Certificate Map for TargetHttpsProxy. |
| `[setQuicOverride](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/setQuicOverride)` | `POST /compute/v1/projects/{project}/global/targetHttpsProxies/{targetHttpsProxy}/setQuicOverride`  
Sets the QUIC override policy for TargetHttpsProxy. |
| `[setSslCertificates](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/setSslCertificates)` | `POST /compute/v1/projects/{project}/targetHttpsProxies/{targetHttpsProxy}/setSslCertificates`  
Replaces SslCertificates for TargetHttpsProxy. |
| `[setSslPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/setSslPolicy)` | `POST /compute/v1/projects/{project}/global/targetHttpsProxies/{targetHttpsProxy}/setSslPolicy`  
Sets the SSL policy for TargetHttpsProxy. |
| `[setUrlMap](https://cloud.google.com/compute/docs/reference/rest/v1/targetHttpsProxies/setUrlMap)` | `POST /compute/v1/projects/{project}/targetHttpsProxies/{targetHttpsProxy}/setUrlMap`  
Changes the URL map for TargetHttpsProxy. |

## REST Resource: [v1.targetInstances](https://cloud.google.com/compute/docs/reference/rest/v1/targetInstances)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/targetInstances/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/targetInstances`  
Retrieves an aggregated list of target instances. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/targetInstances/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/targetInstances/{targetInstance}`  
Deletes the specified TargetInstance resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/targetInstances/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/targetInstances/{targetInstance}`  
Returns the specified TargetInstance resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/targetInstances/insert)` | `POST /compute/v1/projects/{project}/zones/{zone}/targetInstances`  
Creates a TargetInstance resource in the specified project and zone using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/targetInstances/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/targetInstances`  
Retrieves a list of TargetInstance resources available to the specified project and zone. |
| `[setSecurityPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/targetInstances/setSecurityPolicy)` | `POST /compute/v1/projects/{project}/zones/{zone}/targetInstances/{targetInstance}/setSecurityPolicy`  
Sets the Google Cloud Armor security policy for the specified target instance. |

## REST Resource: [v1.targetPools](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools)

 
| Methods |
| --- |
| `[addHealthCheck](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/addHealthCheck)` | `POST /compute/v1/projects/{project}/regions/{region}/targetPools/{targetPool}/addHealthCheck`  
Adds health check URLs to a target pool. |
| `[addInstance](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/addInstance)` | `POST /compute/v1/projects/{project}/regions/{region}/targetPools/{targetPool}/addInstance`  
Adds an instance to a target pool. |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/targetPools`  
Retrieves an aggregated list of target pools. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/targetPools/{targetPool}`  
Deletes the specified target pool. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/get)` | `GET /compute/v1/projects/{project}/regions/{region}/targetPools/{targetPool}`  
Returns the specified target pool. |
| `[getHealth](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/getHealth)` | `POST /compute/v1/projects/{project}/regions/{region}/targetPools/{targetPool}/getHealth`  
Gets the most recent health check results for each IP for the instance that is referenced by the given target pool. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/targetPools`  
Creates a target pool in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/list)` | `GET /compute/v1/projects/{project}/regions/{region}/targetPools`  
Retrieves a list of target pools available to the specified project and region. |
| `[removeHealthCheck](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/removeHealthCheck)` | `POST /compute/v1/projects/{project}/regions/{region}/targetPools/{targetPool}/removeHealthCheck`  
Removes health check URL from a target pool. |
| `[removeInstance](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/removeInstance)` | `POST /compute/v1/projects/{project}/regions/{region}/targetPools/{targetPool}/removeInstance`  
Removes instance URL from a target pool. |
| `[setBackup](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/setBackup)` | `POST /compute/v1/projects/{project}/regions/{region}/targetPools/{targetPool}/setBackup`  
Changes a backup target pool's configurations. |
| `[setSecurityPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/targetPools/setSecurityPolicy)` | `POST /compute/v1/projects/{project}/regions/{region}/targetPools/{targetPool}/setSecurityPolicy`  
Sets the Google Cloud Armor security policy for the specified target pool. |

## REST Resource: [v1.targetSslProxies](https://cloud.google.com/compute/docs/reference/rest/v1/targetSslProxies)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/targetSslProxies/delete)` | `DELETE /compute/v1/projects/{project}/global/targetSslProxies/{targetSslProxy}`  
Deletes the specified TargetSslProxy resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/targetSslProxies/get)` | `GET /compute/v1/projects/{project}/global/targetSslProxies/{targetSslProxy}`  
Returns the specified TargetSslProxy resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/targetSslProxies/insert)` | `POST /compute/v1/projects/{project}/global/targetSslProxies`  
Creates a TargetSslProxy resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/targetSslProxies/list)` | `GET /compute/v1/projects/{project}/global/targetSslProxies`  
Retrieves the list of `TargetSslProxy` resources available to the specified project. |
| `[setBackendService](https://cloud.google.com/compute/docs/reference/rest/v1/targetSslProxies/setBackendService)` | `POST /compute/v1/projects/{project}/global/targetSslProxies/{targetSslProxy}/setBackendService`  
Changes the BackendService for TargetSslProxy. |
| `[setCertificateMap](https://cloud.google.com/compute/docs/reference/rest/v1/targetSslProxies/setCertificateMap)` | `POST /compute/v1/projects/{project}/global/targetSslProxies/{targetSslProxy}/setCertificateMap`  
Changes the Certificate Map for TargetSslProxy. |
| `[setProxyHeader](https://cloud.google.com/compute/docs/reference/rest/v1/targetSslProxies/setProxyHeader)` | `POST /compute/v1/projects/{project}/global/targetSslProxies/{targetSslProxy}/setProxyHeader`  
Changes the ProxyHeaderType for TargetSslProxy. |
| `[setSslCertificates](https://cloud.google.com/compute/docs/reference/rest/v1/targetSslProxies/setSslCertificates)` | `POST /compute/v1/projects/{project}/global/targetSslProxies/{targetSslProxy}/setSslCertificates`  
Changes SslCertificates for TargetSslProxy. |
| `[setSslPolicy](https://cloud.google.com/compute/docs/reference/rest/v1/targetSslProxies/setSslPolicy)` | `POST /compute/v1/projects/{project}/global/targetSslProxies/{targetSslProxy}/setSslPolicy`  
Sets the SSL policy for TargetSslProxy. |

## REST Resource: [v1.targetTcpProxies](https://cloud.google.com/compute/docs/reference/rest/v1/targetTcpProxies)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/targetTcpProxies/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/targetTcpProxies`  
Retrieves the list of all TargetTcpProxy resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/targetTcpProxies/delete)` | `DELETE /compute/v1/projects/{project}/global/targetTcpProxies/{targetTcpProxy}`  
Deletes the specified TargetTcpProxy resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/targetTcpProxies/get)` | `GET /compute/v1/projects/{project}/global/targetTcpProxies/{targetTcpProxy}`  
Returns the specified TargetTcpProxy resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/targetTcpProxies/insert)` | `POST /compute/v1/projects/{project}/global/targetTcpProxies`  
Creates a TargetTcpProxy resource in the specified project using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/targetTcpProxies/list)` | `GET /compute/v1/projects/{project}/global/targetTcpProxies`  
Retrieves the list of `TargetTcpProxy` resources available to the specified project. |
| `[setBackendService](https://cloud.google.com/compute/docs/reference/rest/v1/targetTcpProxies/setBackendService)` | `POST /compute/v1/projects/{project}/global/targetTcpProxies/{targetTcpProxy}/setBackendService`  
Changes the BackendService for TargetTcpProxy. |
| `[setProxyHeader](https://cloud.google.com/compute/docs/reference/rest/v1/targetTcpProxies/setProxyHeader)` | `POST /compute/v1/projects/{project}/global/targetTcpProxies/{targetTcpProxy}/setProxyHeader`  
Changes the ProxyHeaderType for TargetTcpProxy. |

## REST Resource: [v1.targetVpnGateways](https://cloud.google.com/compute/docs/reference/rest/v1/targetVpnGateways)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/targetVpnGateways/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/targetVpnGateways`  
Retrieves an aggregated list of target VPN gateways. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/targetVpnGateways/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/targetVpnGateways/{targetVpnGateway}`  
Deletes the specified target VPN gateway. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/targetVpnGateways/get)` | `GET /compute/v1/projects/{project}/regions/{region}/targetVpnGateways/{targetVpnGateway}`  
Returns the specified target VPN gateway. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/targetVpnGateways/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/targetVpnGateways`  
Creates a target VPN gateway in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/targetVpnGateways/list)` | `GET /compute/v1/projects/{project}/regions/{region}/targetVpnGateways`  
Retrieves a list of target VPN gateways available to the specified project and region. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/targetVpnGateways/setLabels)` | `POST /compute/v1/projects/{project}/regions/{region}/targetVpnGateways/{resource}/setLabels`  
Sets the labels on a TargetVpnGateway. |

## REST Resource: [v1.urlMaps](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/urlMaps`  
Retrieves the list of all UrlMap resources, regional and global, available to the specified project. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps/delete)` | `DELETE /compute/v1/projects/{project}/global/urlMaps/{urlMap}`  
Deletes the specified UrlMap resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps/get)` | `GET /compute/v1/projects/{project}/global/urlMaps/{urlMap}`  
Returns the specified UrlMap resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps/insert)` | `POST /compute/v1/projects/{project}/global/urlMaps`  
Creates a UrlMap resource in the specified project using the data included in the request. |
| `[invalidateCache](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps/invalidateCache)` | `POST /compute/v1/projects/{project}/global/urlMaps/{urlMap}/invalidateCache`  
Initiates a cache invalidation operation, invalidating the specified path, scoped to the specified UrlMap. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps/list)` | `GET /compute/v1/projects/{project}/global/urlMaps`  
Retrieves the list of UrlMap resources available to the specified project. |
| `[patch](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps/patch)` | `PATCH /compute/v1/projects/{project}/global/urlMaps/{urlMap}`  
Patches the specified UrlMap resource with the data included in the request. |
| `[update](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps/update)` | `PUT /compute/v1/projects/{project}/global/urlMaps/{urlMap}`  
Updates the specified UrlMap resource with the data included in the request. |
| `[validate](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps/validate)` | `POST /compute/v1/projects/{project}/global/urlMaps/{urlMap}/validate`  
Runs static validation for the UrlMap. |

## REST Resource: [v1.vpnGateways](https://cloud.google.com/compute/docs/reference/rest/v1/vpnGateways)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/vpnGateways/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/vpnGateways`  
Retrieves an aggregated list of VPN gateways. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/vpnGateways/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/vpnGateways/{vpnGateway}`  
Deletes the specified VPN gateway. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/vpnGateways/get)` | `GET /compute/v1/projects/{project}/regions/{region}/vpnGateways/{vpnGateway}`  
Returns the specified VPN gateway. |
| `[getStatus](https://cloud.google.com/compute/docs/reference/rest/v1/vpnGateways/getStatus)` | `GET /compute/v1/projects/{project}/regions/{region}/vpnGateways/{vpnGateway}/getStatus`  
Returns the status for the specified VPN gateway. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/vpnGateways/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/vpnGateways`  
Creates a VPN gateway in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/vpnGateways/list)` | `GET /compute/v1/projects/{project}/regions/{region}/vpnGateways`  
Retrieves a list of VPN gateways available to the specified project and region. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/vpnGateways/setLabels)` | `POST /compute/v1/projects/{project}/regions/{region}/vpnGateways/{resource}/setLabels`  
Sets the labels on a VpnGateway. |
| `[testIamPermissions](https://cloud.google.com/compute/docs/reference/rest/v1/vpnGateways/testIamPermissions)` | `POST /compute/v1/projects/{project}/regions/{region}/vpnGateways/{resource}/testIamPermissions`  
Returns permissions that a caller has on the specified resource. |

## REST Resource: [v1.vpnTunnels](https://cloud.google.com/compute/docs/reference/rest/v1/vpnTunnels)

 
| Methods |
| --- |
| `[aggregatedList](https://cloud.google.com/compute/docs/reference/rest/v1/vpnTunnels/aggregatedList)` | `GET /compute/v1/projects/{project}/aggregated/vpnTunnels`  
Retrieves an aggregated list of VPN tunnels. |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/vpnTunnels/delete)` | `DELETE /compute/v1/projects/{project}/regions/{region}/vpnTunnels/{vpnTunnel}`  
Deletes the specified VpnTunnel resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/vpnTunnels/get)` | `GET /compute/v1/projects/{project}/regions/{region}/vpnTunnels/{vpnTunnel}`  
Returns the specified VpnTunnel resource. |
| `[insert](https://cloud.google.com/compute/docs/reference/rest/v1/vpnTunnels/insert)` | `POST /compute/v1/projects/{project}/regions/{region}/vpnTunnels`  
Creates a VpnTunnel resource in the specified project and region using the data included in the request. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/vpnTunnels/list)` | `GET /compute/v1/projects/{project}/regions/{region}/vpnTunnels`  
Retrieves a list of VpnTunnel resources contained in the specified project and region. |
| `[setLabels](https://cloud.google.com/compute/docs/reference/rest/v1/vpnTunnels/setLabels)` | `POST /compute/v1/projects/{project}/regions/{region}/vpnTunnels/{resource}/setLabels`  
Sets the labels on a VpnTunnel. |

## REST Resource: [v1.zoneOperations](https://cloud.google.com/compute/docs/reference/rest/v1/zoneOperations)

 
| Methods |
| --- |
| `[delete](https://cloud.google.com/compute/docs/reference/rest/v1/zoneOperations/delete)` | `DELETE /compute/v1/projects/{project}/zones/{zone}/operations/{operation}`  
Deletes the specified zone-specific Operations resource. |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/zoneOperations/get)` | `GET /compute/v1/projects/{project}/zones/{zone}/operations/{operation}`  
Retrieves the specified zone-specific Operations resource. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/zoneOperations/list)` | `GET /compute/v1/projects/{project}/zones/{zone}/operations`  
Retrieves a list of Operation resources contained within the specified zone. |
| `[wait](https://cloud.google.com/compute/docs/reference/rest/v1/zoneOperations/wait)` | `POST /compute/v1/projects/{project}/zones/{zone}/operations/{operation}/wait`  
Waits for the specified Operation resource to return as `DONE` or for the request to approach the 2 minute deadline, and retrieves the specified Operation resource. |

## REST Resource: [v1.zones](https://cloud.google.com/compute/docs/reference/rest/v1/zones)

 
| Methods |
| --- |
| `[get](https://cloud.google.com/compute/docs/reference/rest/v1/zones/get)` | `GET /compute/v1/projects/{project}/zones/{zone}`  
Returns the specified Zone resource. |
| `[list](https://cloud.google.com/compute/docs/reference/rest/v1/zones/list)` | `GET /compute/v1/projects/{project}/zones`  
Retrieves the list of Zone resources available to the specified project. |