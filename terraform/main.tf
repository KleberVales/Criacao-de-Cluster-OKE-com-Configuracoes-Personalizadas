resource "oci_containerengine_cluster" "oke_cluster" {
  name              = var.cluster_name
  compartment_id    = var.compartment_ocid
  kubernetes_version = var.kubernetes_version

  vcn_id            = oci_core_virtual_network.vcn.id
  options {
    service_lb_subnet_ids = [oci_core_subnet.lb_subnet.id]
  }
}

resource "oci_containerengine_node_pool" "oke_node_pool" {
  name              = "${var.cluster_name}-nodepool"
  compartment_id    = var.compartment_ocid
  cluster_id        = oci_containerengine_cluster.oke_cluster.id
  kubernetes_version = var.kubernetes_version
  node_shape        = var.node_shape

  node_config_details {
    size = var.node_count
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
      subnet_id           = oci_core_subnet.node_subnet.id
    }
  }

  node_source_details {
    source_type = "IMAGE"
    image_id    = data.oci_core_images.node_image.id
  }
}


