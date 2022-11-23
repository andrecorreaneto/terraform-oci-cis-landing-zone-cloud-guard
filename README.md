# CIS OCI Landing Zone Cloud Guard Module

![Landing Zone logo](./images/landing_zone_300.png)

This module manages the Cloud Guard service in OCI (Oracle Cloud Infrastructure). Having a Cloud Guard target resource at the root compartment is a CIS (Center for Internet Security) OCI Benchmark recommendation. 

The module creates clones of Oracle managed recipes and uses them in the target resource, thus allowing for customized recipe rules.

Check [module specification](./SPEC.md) for a full description of module requirements, supported variables, managed resources and outputs.

**Caution**: Once Cloud Guard service is enabled by this module by setting *enable_cloud_guard* variable to true, setting the variable to false would make Terraform destroy all targets and recipes, wiping out all customizations and Cloud Guard captured data. For avoiding such destructive updates (intentional or not), make sure to check the Terraform plan output, where Terraform would inform you about any changes to be made in the apply phase.

Check the examples folder for how to use this module. Specifically, [cis-landing-zone-quickstart](./examples/cis-landing-zone-quickstart/README.md) for enabling Cloud Guard as in [CIS OCI Landing Zone Quick Start](https://github.com/oracle-quickstart/oci-cis-landingzone-quickstart).

## Contributing
See [CONTRIBUTING.md](./CONTRIBUTING.md).

## License
Copyright (c) 2022, Oracle and/or its affiliates.

Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

See [LICENSE](./LICENSE) for more details.

## Known Issues
None.
