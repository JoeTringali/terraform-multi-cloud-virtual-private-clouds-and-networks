module "aws0" {
  source                    = "./modules/aws"
  count                     = length(var.aws_vpc_configuration_data) > 0 ? 1 : 0
  cidr_block                = var.aws_vpc_configuration_data[0].cidr_block
  enable_dns_support        = var.aws_vpc_configuration_data[0].enable_dns_support
  subnet_configuration_data = var.aws_vpc_configuration_data[0].subnet_configuration_data
  tags                      = var.aws_vpc_configuration_data[0].tags
  providers = {
    aws = aws.primary
  }
}

module "aws1" {
  source                    = "./modules/aws"
  count                     = length(var.aws_vpc_configuration_data) > 1 ? 1 : 0
  cidr_block                = var.aws_vpc_configuration_data[1].cidr_block
  enable_dns_support        = var.aws_vpc_configuration_data[1].enable_dns_support
  subnet_configuration_data = var.aws_vpc_configuration_data[1].subnet_configuration_data
  tags                      = var.aws_vpc_configuration_data[1].tags
  providers = {
    aws = aws.secondary
  }
}

module "azure" {
  source                    = "./modules/azure"
  count                     = length(var.azure_virtual_network_configuration_data)
  location                  = var.azure_virtual_network_configuration_data[count.index].location
  resource_group_name       = var.azure_virtual_network_configuration_data[count.index].resource_group_name
  virtual_network_name      = var.azure_virtual_network_configuration_data[count.index].name
  address_space             = var.azure_virtual_network_configuration_data[count.index].address_space
  subnet_configuration_data = var.azure_virtual_network_configuration_data[count.index].subnet_configuration_data
  tags                      = var.azure_virtual_network_configuration_data[count.index].tags
  providers = {
    azurerm = azurerm
  }
}

