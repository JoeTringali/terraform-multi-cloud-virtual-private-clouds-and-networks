## AWS Variables

variable "enable_aws" {
  description = "Enable / Disable AWS Deployment"
  type        = bool
  default     = false
}

variable "aws_cidr_blocks" {
  description = "AWS CIDR Blocks"
  type        = list(string)
}

variable "aws_region_names" {
  description = "AWS Region Names"
  type        = list(string)
  default     = ["us-east-1", "us-west-1"]
}

## Azure Variables

variable "enable_azure" {
  description = "Enable / Disable Azure Deployment"
  type        = bool
  default     = false
}

variable "azure_locations" {
  description = "Azure Locations"
  type        = list(string)
  default     = ["eastus", "westus"]
}

variable "azure_resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
}

variable "azure_resource_group_location" {
  description = "Azure Resource Group Location"
  type        = string
}

variable "azure_virtual_network_locations" {
  description = "Azure Virtual Network Locations"
  type        = list(string)
  default     = ["eastus", "westus"]
}

variable "azure_virtual_network_names" {
  description = "Azure Virtual Network Names"
  type        = list(string)
  default     = ["my-primary-virtual-network", "my-secondary-virtual-network"]
}

variable "azure_address_spaces" {
  description = "Azure Address Spaces"
  type        = list(list(string))
}
