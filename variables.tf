## AWS Variables

variable "aws_vpc_configuration_data" {
  description = "AWS VPC Configuration Data"
  type = list(object({
    cidr_block         = string
    enable_dns_support = bool
    region             = string
    subnet_configuration_data = list(object({
      availability_zone = string
      cidr_block        = string
      tags              = map(string)
    }))
    tags = map(string)
  }))
}

## Azure Variables

variable "azure_virtual_network_configuration_data" {
  description = "Azure Virtual Network Configuration Data"
  type = list(object({
    address_space       = list(string)
    location            = string
    name                = string
    resource_group_name = string
    subnet_configuration_data = list(object({
      address_prefixes = list(string)
      name             = string
    }))
    tags = map(string)
  }))
}
