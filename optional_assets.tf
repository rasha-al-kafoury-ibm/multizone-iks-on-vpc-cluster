##############################################################################
# Cluster Pool Module
##############################################################################
/*
module worker_pool {
  source            = "./additional_assets/worker_pool"

  worker_pool_name  = "${var.worker_pool_name}"
  ibm_region        = "${var.ibm_region}"
  resource_group_id = "${data.ibm_resource_group.resource_group.id}"
  cluster_name_id   = "${ibm_container_vpc_cluster.cluster.id}"
  vpc_id            = "${data.ibm_is_vpc.vpc.id}"
  pool_zones        = "${var.cluster_zones}"
  worker_count      = "${var.pool_worker_count}"

}
*/
##############################################################################


##############################################################################
# ALB Cert Module
##############################################################################
/*
module alb_cert {
  source            = "./additional_assets/alb_cert"
  cms_name          = "${var.alb_cert_name}"
  resource_group_id = "${data.ibm_resource_group.resource_group.id}"
  cluster_id        = "${ibm_container_vpc_cluster.cluster.id}"
}
*/
##############################################################################