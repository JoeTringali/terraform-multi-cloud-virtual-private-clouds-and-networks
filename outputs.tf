output "aws_primary_vpc_id" {
  description = "AWS Primary VPC ID"
  value       = module.aws_primary.*.vpc_id
}

output "aws_primary_subnet_ids" {
  description = "AWS Subnet IDs"
  value       = module.aws_primary.*.subnet_ids
}

output "aws_secondary_vpc_id" {
  description = "AWS Secondary VPC ID"
  value       = module.aws_secondary.*.vpc_id
}

output "aws_secondary_subnet_ids" {
  description = "AWS Subnet IDs"
  value       = module.aws_secondary.*.subnet_ids
}

output "azure_virtual_network_ids" {
  description = "Azure Virtual Network IDs"
  value       = module.azure.*.virtual_network_id
}

output "azure_subnet_ids" {
  description = "Azure Subnet IDs"
  value       = module.azure.*.subnet_ids
}

