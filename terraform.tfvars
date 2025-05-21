resourcegrp_name = "RG_prj_Vnetpeering"
resource_location = "centralindia"
vnets = {
  vnetA = {
    vnet_name = "vnetA"
    address_space = ["10.0.0.0/24"]
    subnet_names=["Subnet_A0","Subnet_A1"]
    subnet_prefixes=["10.0.0.0/28","10.0.0.16/28"] 
  }

  vnetB = {
    vnet_name ="vnetB"
    address_space = ["10.1.0.0/24"]
    subnet_names=["Subnet_B0","Subnet_B1"]
    subnet_prefixes=["10.1.0.0/28","10.1.0.16/28"] 
  }
}