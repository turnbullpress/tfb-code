# AWS VPC module for Terraform

A lightweight VPC module for Terraform.

## Usage

```hcl
module "vpc" {
  source = "github.com/turnbullpress/tf_vpc"
  name = "vpc_name"
  cidr = "10.0.0.0/16"
  public_subnet = "10.0.1.0/24"
}
```

See `variables.tf` for additional configurable variables.

## License

MIT
