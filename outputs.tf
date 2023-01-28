output "aws_primary_vpc_id" {
  description = "AWS Primary VPC ID"
  value       = module.aws_primary.*.vpc_id
}

output "aws_secondary_vpc_id" {
  description = "AWS Secondary VPC ID"
  value       = module.aws_secondary.*.vpc_id
}

output "azure_virtual_network_ids" {
  description = "Azure Primary Virtual Network ID"
  value       = module.azure.*.virtual_network_id
}

