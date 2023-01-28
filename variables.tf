## AWS Variables

variable "enable_aws" {
  description = "Enable / Disable AWS Deployment"
  type        = bool
  default     = false
}

variable "aws_vpc_configuration_data" {
  description = "AWS VPC Configuration Data"
  type = list(object({
    cidr_block = string
    region     = string
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
  }))
}
