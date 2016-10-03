provider "aws" {
  region = "${var.region}"
}

module "remote_state" {
  source      = "github.com/turnbullpublishing/tf_remote_state.git"
  prefix      = "${var.prefix}"
  environment = "${var.environment}"
}

data "terraform_remote_state" "web" {
  backend = "s3"

  config {
    region = "${var.region}"
    bucket = "remote_state-web"
    key    = "terraform.tfstate"
  }
}

resource "aws_instance" "base" {
  ami           = "${lookup(var.ami, var.region)}"
  instance_type = "t2.micro"
  subnet_id     = "${data.terraform_remote_state.web.public_subnet_id}"
}

resource "aws_eip" "base" {
  instance = "${aws_instance.base.id}"
}
