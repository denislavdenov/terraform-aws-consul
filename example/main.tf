module "dc1" {
  source = "./module"

  instance_type     = "${var.instance_type}"
  subnet_id         = "${var.subnet_id}"
  security_group_id = "${var.security_group_id}"
  region            = "${var.region}"
  dcname            = "${var.dcname["dc1"]}"
  IP                = "${var.IP_dc1}"
  subnet_id         = "${var.subnet_id["dc1"]}"
  join_wan          = "${var.join_wan["dc1"]}"
}

module "dc2" {
  source = "./module"

  instance_type     = "${var.instance_type}"
  subnet_id         = "${var.subnet_id}"
  security_group_id = "${var.security_group_id}"
  region            = "${var.region}"
  dcname            = "${var.dcname["dc2"]}"
  IP                = "${var.IP_dc2}"
  subnet_id         = "${var.subnet_id["dc2"]}"
  join_wan          = "${var.join_wan["not_dc1"]}"
}

output "server_ips_dc1" {
  value = "${module.dc1.server_ips}"
}

output "client_ips_dc1" {
  value = "${module.dc1.client_ips}"
}

output "server_ips_dc2" {
  value = "${module.dc2.server_ips}"
}

output "client_ips_dc2" {
  value = "${module.dc2.client_ips}"
}
