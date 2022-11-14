# CIS Landing Zone OCI Terraform Cloud Guard Module

This module manages the Cloud Guard service in OCI (Oracle Cloud Infrastructure). Having a Cloud Guard target resource at the root compartment is a CIS (Center for Internet Security) OCI Benchmark requirement. 

The module creates clones of Oracle managed recipes and uses them in the target resource, thus allowing for customized recipe rules.

**Caution**: Once Cloud Guard service is enabled by this module by setting *enable_cloud_guard* variable to true, setting the variable to false would make Terraform destroy all targets and recipes, wiping out all customizations and Cloud Guard captured data. For avoiding such destructive updates (intentional or not), make sure to check the Terraform plan output, where Terraform would inform you about any changes to be made in the apply phase.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_cloud_guard_cloud_guard_configuration.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/cloud_guard_cloud_guard_configuration) | resource |
| [oci_cloud_guard_detector_recipe.activity_cloned](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/cloud_guard_detector_recipe) | resource |
| [oci_cloud_guard_detector_recipe.configuration_cloned](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/cloud_guard_detector_recipe) | resource |
| [oci_cloud_guard_detector_recipe.threat_cloned](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/cloud_guard_detector_recipe) | resource |
| [oci_cloud_guard_responder_recipe.responder_cloned](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/cloud_guard_responder_recipe) | resource |
| [oci_cloud_guard_target.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/cloud_guard_target) | resource |
| [oci_cloud_guard_detector_recipes.activity](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/cloud_guard_detector_recipes) | data source |
| [oci_cloud_guard_detector_recipes.configuration](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/cloud_guard_detector_recipes) | data source |
| [oci_cloud_guard_detector_recipes.threat](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/cloud_guard_detector_recipes) | data source |
| [oci_cloud_guard_responder_recipes.responder](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/cloud_guard_responder_recipes) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_activity_detector_recipe_name"></a> [activity\_detector\_recipe\_name](#input\_activity\_detector\_recipe\_name) | The activity detector recipe name. A provided value overrides the auto-generated name. | `string` | `null` | no |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The compartment ocid where the Cloud Guard target and the cloned recipes are created. | `string` | n/a | yes |
| <a name="input_configuration_detector_recipe_name"></a> [configuration\_detector\_recipe\_name](#input\_configuration\_detector\_recipe\_name) | The configuration detector recipe name. A provided value overrides the auto-generated name. | `string` | `null` | no |
| <a name="input_defined_tags"></a> [defined\_tags](#input\_defined\_tags) | Map of key-value pairs of defined tags for Cloud Guard managed resources. | `map(string)` | `null` | no |
| <a name="input_enable_cloud_guard"></a> [enable\_cloud\_guard](#input\_enable\_cloud\_guard) | Whether Cloud Guard is to be enabled. | `bool` | n/a | yes |
| <a name="input_freeform_tags"></a> [freeform\_tags](#input\_freeform\_tags) | Map of key-value pairs of freeform tags for Cloud Guard managed resources. | `map(string)` | `null` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | A string used as a prefix in the auto-generated resource names. | `string` | n/a | yes |
| <a name="input_reporting_region"></a> [reporting\_region](#input\_reporting\_region) | Cloud Guard reporting region. | `string` | n/a | yes |
| <a name="input_responder_recipe_name"></a> [responder\_recipe\_name](#input\_responder\_recipe\_name) | The responder recipe name. A provided value overrides the auto-generated name. | `string` | `null` | no |
| <a name="input_self_manage_resources"></a> [self\_manage\_resources](#input\_self\_manage\_resources) | Whether Oracle managed resources are created by customers. | `bool` | `false` | no |
| <a name="input_target_resource_id"></a> [target\_resource\_id](#input\_target\_resource\_id) | Resource ocid that Cloud Guard monitors. If a compartment ocid is provided, Cloud Guard monitors the compartment and all its subcompartments. | `string` | n/a | yes |
| <a name="input_target_resource_name"></a> [target\_resource\_name](#input\_target\_resource\_name) | Cloud Guard target name. A provided value overrides the auto-generated name. | `string` | `null` | no |
| <a name="input_target_resource_type"></a> [target\_resource\_type](#input\_target\_resource\_type) | Resource types that Cloud Guard is able to monitor. | `string` | `"COMPARTMENT"` | no |
| <a name="input_tenancy_id"></a> [tenancy\_id](#input\_tenancy\_id) | The tenancy ocid, where Cloud Service is enabled. | `string` | n/a | yes |
| <a name="input_threat_detector_recipe_name"></a> [threat\_detector\_recipe\_name](#input\_threat\_detector\_recipe\_name) | The threat detector recipe name. A provided value overrides the auto-generated name. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_activity_detector_recipe"></a> [activity\_detector\_recipe](#output\_activity\_detector\_recipe) | n/a |
| <a name="output_configuration_detector_recipe"></a> [configuration\_detector\_recipe](#output\_configuration\_detector\_recipe) | n/a |
| <a name="output_responder_recipe"></a> [responder\_recipe](#output\_responder\_recipe) | n/a |
| <a name="output_target"></a> [target](#output\_target) | n/a |
| <a name="output_threat_detector_recipe"></a> [threat\_detector\_recipe](#output\_threat\_detector\_recipe) | n/a |

## Contributing
Oracle welcomes your contribution. To post feedback, submit feature ideas or report bugs, please use the Issues section on this repository.	

## License
Copyright (c) 2022, Oracle and/or its affiliates.

Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

See [LICENSE](LICENSE) for more details.

## Known Issues
None.
