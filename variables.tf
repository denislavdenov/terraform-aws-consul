variable "aws_access_key" {
  description = "Your AWS access key."
}

variable "aws_secret_key" {
  description = "Your AWS secret key."
}

variable "instance_type" {
  description = "Specify the instance type."
}

variable "subnet_id" {
  description = "Specify subnet ID."
}

variable "security_group_id" {
  type        = "list"
  description = "Security group that you want to use."
}

variable "ami" {
  type        = "map"
  description = "AMI IDs based on if node is a client or a server"

  default = {
    "client" = "ami-06c350abb0d40236f"
    "server" = "ami-0085f11818f401bdf"
  }
}

variable "domain" {
  default     = "consul"
  description = "Domain of the Consul cluster"
}

variable "dcname" {
  default     = "dc1"
  description = "Datacenter name of the Consul cluster"
}
