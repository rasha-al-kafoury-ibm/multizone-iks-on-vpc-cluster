##############################################################################
# Module Variables
# > Only needed if using this folder as a module
##############################################################################

variable resource_group_id {
  description = "ID of resource group where cluster is provisioned"
}

variable ibm_region {
  description = "IBM Cloud region where all resources will be deployed"
}

variable cluster_id {
  description  = "ID of IKS cluster where alb cert needs to be provisioned"
}

##############################################################################


##############################################################################
# Resource Variables
##############################################################################

variable cms_name {
  description = "name of CMS instance to upload certificate"
}

variable imported_certificate_name {
  description = "Name of secret to be added to the alb"
  default     = "imported-certificiate-secret"
}

##############################################################################