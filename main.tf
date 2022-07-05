provider "azurerm" {
  features {}
}
# create the resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
# create virtual network 
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.Virtual_Machine_name[1]}-Vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}