variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {
  default = "sa-saopaulo-1"
}

variable "compartment_ocid" {}
variable "cluster_name" {
  default = "vision-cluster"
}
variable "kubernetes_version" {
  default = "v1.28.2"
}
variable "node_shape" {
  default = "VM.Standard3.Flex"
}
variable "node_count" {
  default = 3
}

