# Copyright (c) 2022 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "configuration_detector_recipe" {
  value = module.cislz_cloud_guard.configuration_detector_recipe
}

output "activity_detector_recipe" {
  value = module.cislz_cloud_guard.activity_detector_recipe
}

output "threat_detector_recipe" {
  value = module.cislz_cloud_guard.threat_detector_recipe
}

output "responder_recipe" {
  value = module.cislz_cloud_guard.responder_recipe
}

output "target" {
  value = module.cislz_cloud_guard.target
}