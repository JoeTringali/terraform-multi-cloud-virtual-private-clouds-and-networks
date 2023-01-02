module "aws_primary" {
  source     = "./modules/aws"
  count      = var.enable_aws ? 1 : 0
  cidr_block = var.aws_cidr_blocks[0]
  providers = {
    aws = aws.primary
  }
}

module "aws_secondary" {
  source     = "./modules/aws"
  count      = var.enable_aws ? 1 : 0
  cidr_block = var.aws_cidr_blocks[1]
  providers = {
    aws = aws.secondary
  }
}

module "azure_primary" {
  source                   = "./modules/azure"
  count                    = var.enable_azure ? 1 : 0
  location                 = var.azure_locations[0]
  resource_group_name      = var.azure_resource_group_name
  resource_group_location  = var.azure_resource_group_location
  virtual_network_location = var.azure_virtual_network_locations[0]
  virtual_network_name     = var.azure_virtual_network_names[0]
  address_space            = var.azure_address_spaces[0]
  providers = {
    azurerm = azurerm.primary
  }
}

module "azure_secondary" {
  source                   = "./modules/azure"
  count                    = var.enable_azure ? 1 : 0
  location                 = var.azure_locations[1]
  resource_group_name      = var.azure_resource_group_name
  resource_group_location  = var.azure_resource_group_location
  virtual_network_location = var.azure_virtual_network_locations[1]
  virtual_network_name     = var.azure_virtual_network_names[1]
  address_space            = var.azure_address_spaces[1]
  providers = {
    azurerm = azurerm.secondary
  }
}
