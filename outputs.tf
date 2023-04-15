output "aws_vpc_ids" {
  description = "AWS Virtual Private Cloud IDs"
  value       = concat(module.aws0.*.vpc_id, module.aws1.*.vpc_id)
}

output "aws_subnet_ids" {
  description = "AWS Subnet IDs"
  value       = concat(module.aws0.*.subnet_ids, module.aws1.*.subnet_ids)
}

output "azure_virtual_network_ids" {
  description = "Azure Virtual Network IDs"
  value       = module.azure.*.virtual_network_id
}

output "azure_subnet_ids" {
  description = "Azure Subnet IDs"
  value       = module.azure.*.subnet_ids
}

