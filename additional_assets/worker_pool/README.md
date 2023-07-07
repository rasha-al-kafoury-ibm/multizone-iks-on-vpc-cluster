### Adding this Module

1. Copy the [worker_pool](./addworker_pool) directory into your module
2. Declare your module:

```
module iks_worker_pool {
    source = "./worker_pool"

    # Account Variables
    ibm_region         = "<your value>"
    resource_group_id  = "<your value>"

    # Cluster Variables
    cluster_name_if    = "<your value>"
    vpc_id             = "<your value>"
    
    # Worker Pool Variables
    machine_type       = "<your value>"
    subnet_ids         = "<your value>"
    worker_pool_name   = "<your value>"
    worker_count       = "<your value>"
}

```

### Variables

Variable | Type | Description | Default
---------|------|-------------|--------
`ibm_region` | String | IBM Cloud region where all resources will be deployed |
`resource_group_id` | String | ID of resource group where cluster is provisioned |
`worker_pool_name` | String | Name for worker pool |
`cluster_name_id` | String | Name or ID of IKS on VPC cluster. If you are planning to provision both the cluster and the worker pool at the same time, use the cluster id |
`vpc_id` | String | ID of VPC where worker pool should be provisioned |
`subnet_ids` | list | List of subnet IDs [zone 1, zone 2, zone 3] |
`machine_type` | String | Machine type for the IKS Cluster | `b2.4x16`
`worker_count` | String | Number of workers per zone | `2`

### Outputs

- `pool_id`:
    - The worker pool ID