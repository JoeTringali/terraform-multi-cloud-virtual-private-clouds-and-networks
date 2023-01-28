resource "azurerm_virtual_network" "vn" {
  address_space       = var.address_space
  location            = var.location
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
