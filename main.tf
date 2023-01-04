module "aws_primary" {
  source     = "./modules/aws"
  count      = var.enable_aws ? 1 : 0
  cidr_block = var.aws_vpc_configuration_data[0].cidr_block
  providers = {
    aws = aws.primary
  }
}

module "aws_secondary" {
  source     = "./modules/aws"
  count      = var.enable_aws ? 1 : 0
  cidr_block = var.aws_vpc_configuration_data[1].cidr_block
  providers = {
    aws = aws.secondary
  }
}

module "azure_primary" {
  source               = "./modules/azure"
  count                = var.enable_azure ? 1 : 0
  location             = var.azure_virtual_network_configuration_data[0].location
  resource_group_name  = var.azure_virtual_network_configuration_data[0].resource_group_name
  virtual_network_name = var.azure_virtual_network_configuration_data[0].name
  address_space        = var.azure_virtual_network_configuration_data[0].address_space
  providers = {
    azurerm = azurerm.primary
  }
}

module "azure_secondary" {
  source               = "./modules/azure"
  count                = var.enable_azure ? 1 : 0
  location             = var.azure_virtual_network_configuration_data[1].location
  resource_group_name  = var.azure_virtual_network_configuration_data[1].resource_group_name
  virtual_network_name = var.azure_virtual_network_configuration_data[1].name
  address_space        = var.azure_virtual_network_configuration_data[1].address_space
  providers = {
    azurerm = azurerm.secondary
  }
}
