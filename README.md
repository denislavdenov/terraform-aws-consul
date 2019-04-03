# This repo is a Terraform module that is consumed by terraform-consul-multidc repo.

This module is used in the main repo in order to create the desired count of Consul Datacenters.

Each call of the module creates 3 consul servers and 1 consul client.

The count of the servers and clients created can be set in `variables.tf` 

Main repo terraform-consul-multidc calls this module repo by URL and it is used for what is called production.

If you need to develop a new feature or test something navigate to the `example` folder.