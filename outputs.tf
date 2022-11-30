# Copyright (c) 2022 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "cloned_configuration_detector_recipe" {
  value = length(oci_cloud_guard_detector_recipe.configuration_cloned) > 0 ? oci_cloud_guard_detector_recipe.configuration_cloned[0] : null
}

output "cloned_activity_detector_recipe" {
  value = length(oci_cloud_guard_detector_recipe.activity_cloned) > 0 ? oci_cloud_guard_detector_recipe.activity_cloned[0] : null
}

output "cloned_threat_detector_recipe" {
  value = length(oci_cloud_guard_detector_recipe.threat_cloned) > 0 ? oci_cloud_guard_detector_recipe.threat_cloned[0] : null
}

output "cloned_responder_recipe" {
  value = length(oci_cloud_guard_responder_recipe.responder_cloned) > 0 ? oci_cloud_guard_responder_recipe.responder_cloned[0] : null
}

output "target" {
  value = length(oci_cloud_guard_target.this) > 0 ? oci_cloud_guard_target.this[0] : null
}