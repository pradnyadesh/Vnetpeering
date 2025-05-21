variable "resourcegrp_name" {
  type = string
  description = "RG name"
}

variable "resource_location" {
  type = string
  description = "RG_location"
}

variable "vnets" {
  type = map(object({
    address_space = list(string)
    vnet_name=string
    subnet_names=list(string)
    subnet_prefixes=list(string)
  }))
}
