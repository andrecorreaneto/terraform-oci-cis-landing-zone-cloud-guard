# Copyright (c) 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

module "cislz_cloud_guard" {
  source = "../../"

  enable_cloud_guard = true
  tenancy_id         = var.tenancy_id
  compartment_id     = var.tenancy_id
  target_resource_id = var.tenancy_id
  reporting_region   = var.home_region
  name_prefix        = "cislz"
}  