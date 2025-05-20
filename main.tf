resource "azurerm_resource_group" "RG01" {
  name = var.resourcegrp_name
  location = var.resource_location
}

module "vnet" {
  source  = "Azure/vnet/azurerm"
  version = "5.0.1"
  resource_group_name = var.resourcegrp_name
  vnet_location = var.resource_location
  address_space = var.vnet_address_space
  vnet_name = var.vnet_name
  subnet_names = [var.subnet_names[0],var.subnet_names[1]]
  subnet_prefixes = ["10.0.1.0/24","10.0.0.0/24"]
  depends_on = [ azurerm_resource_group.RG01 ]
}
