# Copyright (c) 2022 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "configuration_detector_recipe" {
  value = oci_cloud_guard_detector_recipe.configuration_cloned
}

output "activity_detector_recipe" {
  value = oci_cloud_guard_detector_recipe.activity_cloned
}

output "threat_detector_recipe" {
  value = oci_cloud_guard_detector_recipe.threat_cloned
}

output "responder_recipe" {
  value = oci_cloud_guard_responder_recipe.responder_cloned
}

output "target" {
  value = oci_cloud_guard_target.this
}