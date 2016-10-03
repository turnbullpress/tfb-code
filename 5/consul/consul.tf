provider "aws" {
  region = "${var.region}"
}

module "remote_state" {
  source      = "github.com/turnbullpublishing/tf_remote_state.git"
  prefix      = "${var.prefix}"
  environment = "${var.environment}"
}

module "vpc" {
  source        = "github.com/turnbullpublishing/tf_vpc.git?ref=v0.0.1"
  name          = "consul"
  cidr          = "${var.vpc_cidr}"
  public_subnet = "${var.public_subnet}"
}

module "consul" {
  source           = "github.com/turnbullpublishing/tf_consul.git?ref=v0.0.1"
  environment      = "${var.environment}"
  token            = "${var.token}"
  encryption_key   = "${var.encryption_key}"
  vpc_id           = "${module.vpc.vpc_id}"
  public_subnet_id = "${module.vpc.public_subnet_id}"
  region           = "${var.region}"
  key_name         = "${var.key_name}"
}
