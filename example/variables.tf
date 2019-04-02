variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "instance_type" {}

variable "subnet_id" {
  type        = "map"
  description = "subnets"
  default = {
    "sofia" = "subnet-06f4353914e004355"
    "varna" = "subnet-0c6f1bb70d341543f"
  }
}

variable "security_group_id" {
  type = "list"
}

variable "region" {
  description = "Default AWS region"
  default     = "us-east-1"
}

variable "dcname" {
  type        = "map"
  description = "Datacenter name of the Consul cluster"
  default = {
    "sofia" = "sofia"
    "varna" = "varna"
  }
}

variable "IP_sofia" {
  type        = "map"
  description = "IP segment based on if node is a server or a client."

  default = {
    "client" = "172.31.17.1"
    "server" = "172.31.16.1"
  }
}

variable "IP_varna" {
  type        = "map"
  description = "IP segment based on if node is a server or a client."

  default = {
    "client" = "172.31.33.1"
    "server" = "172.31.32.1"
  }
}