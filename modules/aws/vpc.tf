resource "aws_vpc" "vpc" {
  cidr_block         = var.cidr_block
  enable_dns_support = var.enable_dns_support
  tags               = var.tags
}

resource "aws_subnet" "subnet" {
  count             = length(var.subnet_configuration_data)
  vpc_id            = aws_vpc.vpc.id
  availability_zone = var.subnet_configuration_data[count.index].availability_zone
  cidr_block        = var.subnet_configuration_data[count.index].cidr_block
  tags              = var.subnet_configuration_data[count.index].tags
}
