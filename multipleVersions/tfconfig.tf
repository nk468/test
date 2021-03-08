variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "region" {}
variable "display_name_prefix" {}
variable "test_new_variable" {}
terraform {
  required_version = ">= 0.12.0"
}

provider "oci" {
  tenancy_ocid = "${var.tenancy_ocid}"
  region       = "${var.region}"
}

resource "oci_core_virtual_network" "vcn1" {
  cidr_block     = "10.0.0.0/16"
  dns_label      = "vcn1"
  compartment_id = "${var.compartment_ocid}"
  display_name   = "${var.display_name_prefix}VCN1-1-orch-plugin-tests"
}
