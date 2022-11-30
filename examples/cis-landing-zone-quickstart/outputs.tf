# Copyright (c) 2022 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "configuration_detector_recipe" {
  value = module.cislz_cloud_guard.cloned_configuration_detector_recipe
}

output "activity_detector_recipe" {
  value = module.cislz_cloud_guard.cloned_activity_detector_recipe
}

output "threat_detector_recipe" {
  value = module.cislz_cloud_guard.cloned_threat_detector_recipe
}

output "responder_recipe" {
  value = module.cislz_cloud_guard.cloned_responder_recipe
}

output "target" {
value = module.cislz_cloud_guard.target != null ? {"display_name" : module.cislz_cloud_guard.target.display_name, "id" : module.cislz_cloud_guard.target.id, "compartment_id" : module.cislz_cloud_guard.target.compartment_id} : null
}