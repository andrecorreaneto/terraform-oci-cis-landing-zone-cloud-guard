# CIS OCI Landing Zone Cloud Guard Module

![Landing Zone logo](./images/landing_zone_300.png)

This module manages the Cloud Guard service in OCI (Oracle Cloud Infrastructure). Having a Cloud Guard target resource at the root compartment is a CIS (Center for Internet Security) OCI Benchmark recommendation. 

The module supports cloning the Oracle managed recipes and using them in the target resource, thus allowing for customized recipe rules. By default, the module uses Oracle managed recipes. For enabling cloned recipes, set *enable_cloned_recipes* input variable to true. 

Notice that switching back and forth between Oracle managed and cloned detector recipes is a replacement operation, i.e., a removal followed by a new attachment. Removing recipes from a target moves all the open problems associated with this recipe to "resolved" state. If the removed recipe is eventually re-attached to the target, the behavior for the effected problems are as follows:

- Configuration type problem: existing problem will re-open (if the issue still persists).
- Activity problem: existing problem will re-open when the activity happens again.
- Threat detector: existing problem will re-open.

For more details on problem lifecycle, see [documentation](https://docs.oracle.com/en-us/iaas/cloud-guard/using/problems-page.htm#problems-page__sect_prob_lifecycle). 

**Caution**: Cloud Guard service is enabled by this module by setting *enable_cloud_guard* variable to true. Subsequently setting the variable to false would make Terraform delete the managed target and any managed cloned recipes. For avoiding such destructive updates (intentional or not), make sure to check the Terraform plan output, where Terraform would inform you about any changes to be made in the apply phase.

Check [module specification](./SPEC.md) for a full description of module requirements, supported variables, managed resources and outputs.

Check the examples folder for how to use this module. Specifically, [cis-landing-zone-quickstart](./examples/cis-landing-zone-quickstart/README.md) for enabling Cloud Guard as in [CIS OCI Landing Zone Quick Start](https://github.com/oracle-quickstart/oci-cis-landingzone-quickstart).

## Contributing
See [CONTRIBUTING.md](./CONTRIBUTING.md).

## License
Copyright (c) 2022, Oracle and/or its affiliates.

Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

See [LICENSE](./LICENSE) for more details.

## Known Issues
None.
