variable "resourcegrp_name" {
  type = string
  description = "RG name"
}

variable "resource_location" {
  type = string
  description = "RG_location"
}

variable "vnet_address_space" {
  type = list(string)
  description = "Vnet address space"
}
  
variable "vnet_name" {
  type = string
  description = "Vnet names"
}

variable "subnet_names" {
  type = list(string)
  description = "subnet names"
}