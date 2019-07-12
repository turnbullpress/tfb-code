variable "region" {
  description = "The AWS region."
  default = "us-east-1"
}

variable "prefix" {
  description = "The name of our org, i.e. examplecom."
  default     = "examplecom"
}

variable "environment" {
  description = "The environment name."
  default     = "base"
}
