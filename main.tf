resource "azurerm_resource_group" "RG01" {
  name = var.resourcegrp_name
  location = var.resource_location
}

module "vnet" {
  for_each = var.vnets
  source  = "Azure/vnet/azurerm"
  version = "5.0.1"
  resource_group_name = var.resourcegrp_name
  vnet_location = var.resource_location
  address_space = each.value.address_space
  vnet_name = each.value.vnet_name
  subnet_names = each.value.subnet_names
  subnet_prefixes = each.value.subnet_prefixes
  depends_on = [ azurerm_resource_group.RG01 ]
 
}
