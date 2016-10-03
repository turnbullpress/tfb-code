variable "owner_tag" {
  default = ["team1", "team2"]
}

variable "region" {
  description = "The AWS region"
}

variable "ami" {
  type        = "map"
  description = "The AMI to use"
  default     = {}
}

variable "instance_type" {
  description = "The type of AWS instance to launch"
  default     = "t2.micro"
}

variable "key_name" {
  description = "The AWS key pair name"
  default     = "james"
}

variable "instance_ips" {
  description = "The IPs to use for our instances"
  default     = ["10.0.1.20", "10.0.1.21"]
}

variable "prefix" {
  description = "The name of our org, i.e. examplecom."
  default     = "examplecom"
}

variable "environment" {
  description = "The name of the environment."
  default     = "web"
}

variable "token" {
  description = "The Consul server token"
}
