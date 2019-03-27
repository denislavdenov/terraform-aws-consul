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

variable "region" {
  description = "Specify the prefered AWS region"
}

variable "server_dc1_count" {
  description = "Count of Consul servers in DC1."
  default = "3"
}

variable "nginx_client_dc1_count" {
  description = "Count of nginx consul clients in DC1."
  default = "1"
}

variable "IP_DC1" {
  type        = "map"
  description = "IP segment based on if node is a server or a client."

  default = {
    "client" = "172.31.17.1"
    "server" = "172.31.16.1"
  }
}