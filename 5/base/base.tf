provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "examplecom-remote-state-base"
    key    = "terraform.tfstate"
  }
}

data "terraform_remote_state" "web" {
  backend = "s3"

  config = {
    region = var.region
    bucket = "examplecom-remote-state-web"
    key    = "terraform.tfstate"
  }
}

resource "aws_instance" "base" {
  ami           = var.ami[var.region]
  instance_type = "t2.micro"
  subnet_id     = data.terraform_remote_state.web.outputs.public_subnet_id
}

resource "aws_eip" "base" {
  instance = aws_instance.base.id
}

