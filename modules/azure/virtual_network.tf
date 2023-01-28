resource "azurerm_virtual_network" "vn" {
  address_space       = var.address_space
  location            = var.location
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  count             = length(var.subnet_configuration_data)
  resource_group_name  = "${azurerm_virtual_network.vn.resource_group_name}"
  virtual_network_name = "${azurerm_virtual_network.vn.name}"
  address_prefixes     = var.subnet_configuration_data[count.index].address_prefixes
  name                 = var.subnet_configuration_data[count.index].name
}
