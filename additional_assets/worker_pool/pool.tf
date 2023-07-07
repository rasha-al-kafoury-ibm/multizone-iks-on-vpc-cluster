##############################################################################
# Worker Pool
##############################################################################

resource ibm_container_vpc_worker_pool pool {

  cluster            = "${var.cluster_name_id}"
  worker_pool_name   = "${var.worker_pool_name}"
  flavor             = "${var.machine_type}"
  worker_count       = "${var.worker_count}"
  vpc_id             = "${var.vpc_id}"
  resource_group_id  = "${var.resource_group_id}"

  dynamic zones {
    for_each = "${var.pool_zones}"
    content {
      subnet_id = "${zones.value.subnet_id}"
      name      = "${var.ibm_region}-${zones.value.zone}"
    }
  }

}

##############################################################################