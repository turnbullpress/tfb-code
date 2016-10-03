provider "aws" {
  access_key = "abc123"
  secret_key = "abc123"
  region     = "us-east-1"
}

resource "aws_instance" "base" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}

resource "aws_eip" "base" {
  instance = "${aws_instance.base.id}"
}
