variable "region" {
  description = "The AWS region."
}

variable "prefix" {
  description = "The name of our org, i.e. examplecom."
  default     = "examplecom"
}

variable "environment" {
  description = "The environment name."
  default     = "base"
}

variable "ami" {
  type        = "map"
  description = "The AMIs to launch."
  default     = {}
}

variable "instance_type" {
  description = "The type of instance to launch."
  default     = "t1.micro"
}
