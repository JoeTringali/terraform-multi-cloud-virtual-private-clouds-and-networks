module "aws_primary" {
  source     = "./modules/aws"
  count      = length(var.aws_vpc_configuration_data) > 0 ? 1 : 0
  cidr_block = var.aws_vpc_configuration_data[0].cidr_block
  providers = {
    aws = aws.primary
  }
}

module "aws_secondary" {
  source     = "./modules/aws"
  count      = length(var.aws_vpc_configuration_data) > 1 ? 1 : 0
  cidr_block = var.aws_vpc_configuration_data[1].cidr_block
  providers = {
    aws = aws.secondary
  }
}

module "azure" {
  source               = "./modules/azure"
  count                = length(var.azure_virtual_network_configuration_data)
  location             = var.azure_virtual_network_configuration_data[count.index].location
  resource_group_name  = var.azure_virtual_network_configuration_data[count.index].resource_group_name
  virtual_network_name = var.azure_virtual_network_configuration_data[count.index].name
  address_space        = var.azure_virtual_network_configuration_data[count.index].address_space
  providers = {
    azurerm = azurerm
  }
}

