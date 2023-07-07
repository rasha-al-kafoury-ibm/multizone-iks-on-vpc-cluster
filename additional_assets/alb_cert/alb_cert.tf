################################################################################
# Get CMS Instance Data
################################################################################

data ibm_resource_instance cms {
  name              = "${var.cms_name}"
  resource_group_id = "${var.resource_group_id}" # "${data.ibm_resource_group.resource_group.id}"
  location          = "${var.ibm_region}"
  service           = "cloudcerts"
}

################################################################################


################################################################################
# Create and Import ssl cert for testing and load certificate to CMS
################################################################################

resource ibm_certificate_manager_import cert {

  certificate_manager_instance_id = "${data.ibm_resource_instance.cms.id}"

  name        = "example-cert"
  description = "string"
  data        = {
    content      = "${file("${path.module}/config/example_cert.pem")}"
    priv_key     = "${file("${path.module}/config/example_private.key")}"
  }
  
}

################################################################################


##############################################################################
# Enable ALB cert for cluster
##############################################################################

resource ibm_container_alb_cert cert {
  cert_crn    = "${ibm_certificate_manager_import.cert.id}"
  secret_name = "${var.imported_certificate_name}"
  cluster_id  = "${var.cluster_id}"  
}

##############################################################################