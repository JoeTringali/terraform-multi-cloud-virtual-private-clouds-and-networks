output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.vpc.id
}
output "subnet_ids" {
  description = "Subnet IDs"
  value       = aws_subnet.subnet.*.id
}

