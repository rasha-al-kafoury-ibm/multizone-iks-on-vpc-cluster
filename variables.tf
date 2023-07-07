##############################################################################
# Sensitive Account Variables
##############################################################################

variable ibmcloud_api_key {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources"
}

##############################################################################


##############################################################################
# Account Variables
##############################################################################

variable ibm_region {
  description = "IBM Cloud region where all resources will be deployed"
}

variable resource_group {
  description = "Name of resource group to provision resources"
}

##############################################################################


##############################################################################
# VPC Variables
##############################################################################

variable vpc_name {
  description = "ID of VPC where cluster is to be created"
  default     = "jv-test-vpc"
}

variable cluster_zones {
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


##############################################################################


##############################################################################
# Cluster Variables
##############################################################################

variable cluster_name {
  description = "name for the iks cluster"
  default     = "iks-on-vpc-cluter"
}

variable machine_type {
  description = "Machine type for the IKS Cluster"
  default     = "b2.4x16"
}


variable worker_count {
  description = "Number of workers per zone"
  default     = 1
}

variable disable_pse {
  description = "Disable public service endpoint for cluster. True or false"
  default     = false
}

variable enable_albs {
  description = "Enable ALBs for cluster"
  default     = true
}

variable only_private_albs {
  description = "enable only private albs"
  default     = false
}

##############################################################################


##############################################################################
# Worker Pool Variables
# > Uncomment to add a worker pool in `optional_assets.tf`
##############################################################################
/*
variable worker_pool_name {
  description = "Worker pool name"
  default     = "worker-pool-2"
}

variable pool_worker_count {
  description = "Count for workers in worker pool"
  default     = 1
}
*/
##############################################################################


##############################################################################
# ALB Cert Name
# > Uncomment to add ALB Cert module in `optional_assets.tf`
##############################################################################
/*
variable alb_cert_name {
  description = "Alb Cert Name"
  default     = "imported-alb-cert"
}
*/
##############################################################################