##############################################################################
# Account Variables
##############################################################################

variable ibm_region {
  description = "IBM Cloud region where all resources will be deployed"
}

variable resource_group_id {
    description = "ID of resource group where cluster is provisioned"
}

##############################################################################


##############################################################################
# Worker Pool Variables
##############################################################################

variable worker_pool_name {
    description = "Name for worker pool"
}

variable cluster_name_id {
    description = "Name or ID of IKS on VPC cluster. If you are planning to provision both the cluster and the worker pool at the same time, use the cluster id"
}

variable vpc_id {
    description = "ID of VPC where worker pool should be provisioned"
}

variable pool_zones {
  description = "List maps containing a zone number and the id of a subnet in that zone. Can be used to create a cluster on any number of subnets in a single region"
  type        = "list"
    /*
   example =[
    {
      zone     = 1
      subnet_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    },
    {
      zone     = 2
      subnet_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    },
    {
      zone     = 3
      subnet_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    }
  ]
  */
}
variable machine_type {
  description = "Machine type for the IKS Cluster"
  default     = "b2.4x16"
}

variable worker_count {
  description = "Number of workers per zone"
  default     = 2
}

##############################################################################