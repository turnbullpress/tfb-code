variable "region" {
  type        = string
  description = "The AWS region."
}

variable "prefix" {
  type        = string
  description = "The name of our org, i.e. examplecom."
  default     = "examplecom"
}

variable "environment" {
  type        = string
  description = "The name of our environment, i.e. development."
  default     = "consul"
}

variable "key_name" {
  type        = string
  description = "The AWS key pair to use for resources."
  default     = "/Users/james/.ssh/james_aws"
}

variable "private_key_path" {
  type        = string
  description = "The path to the AWS key pair to use for resources."
  default     = "/Users/james/.ssh/james_aws"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR of the VPC."
}

variable "public_subnet" {
  type        = string
  description = "The public subnet to populate."
}

variable "token" {
  type        = string
  description = "Consul server token"
}

variable "encryption_key" {
  type        = string
  description = "Consul encryption key"
}

