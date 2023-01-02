output "aws_primary_vpc_id" {
  description = "AWS Primary VPC ID"
  value       = module.aws_primary.*.vpc_id
}

output "aws_secondary_vpc_id" {
  description = "AWS Secondary VPC ID"
  value       = module.aws_secondary.*.vpc_id
}

output "azure_primary_virtual_network_id" {
  description = "Azure Primary Virtual Network ID"
  value       = module.azure_primary.*.virtual_network_id
}

output "azure_secondary_virtual_network_id" {
  description = "Azure Secondary Virtual Network ID"
  value       = module.azure_secondary.*.virtual_network_id
}
