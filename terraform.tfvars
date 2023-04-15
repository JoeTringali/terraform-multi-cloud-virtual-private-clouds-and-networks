## AWS Variables

aws_vpc_configuration_data = [
  {
    cidr_block         = "10.0.0.0/16"
    enable_dns_support = true
    region             = "us-east-1"
    subnet_configuration_data = [
      {
        availability_zone = "us-east-1a"
        cidr_block        = "10.0.0.0/26"
        tags = {
          Name = "vpc-1-subnet-1-A"
        }
      },
      {
        availability_zone = "us-east-1b"
        cidr_block        = "10.0.0.64/26"
        tags = {
          Name = "vpc-1-subnet-1-B"
        }
      },
      {
        availability_zone = "us-east-1c"
        cidr_block        = "10.0.0.128/26"
        tags = {
          Name = "vpc-1-subnet-1-C"
        }
      }
    ]
    tags = {
      Name = "vpc-1"
    }
  },
  {
    cidr_block         = "10.64.0.0/16"
    enable_dns_support = true
    region             = "us-west-1"
    subnet_configuration_data = [
      {
        availability_zone = "us-west-1c"
        cidr_block        = "10.64.0.0/26"
        tags = {
          Name = "vpc-2-subnet-1-A"
        }
      },
      {
        availability_zone = "us-west-1b"
        cidr_block        = "10.64.0.64/26"
        tags = {
          Name = "vpc-2-subnet-1-B"
        }
      },
      {
        availability_zone = "us-west-1c"
        cidr_block        = "10.64.0.128/26"
        tags = {
          Name = "vpc-2-subnet-1-C"
        }
      }
    ]
    tags = {
      Name = "vpc-2"
    }
  }
]

## Azure Variables

azure_virtual_network_configuration_data = [
  {
    address_space       = ["10.128.0.0/16"]
    location            = "eastus"
    name                = "my-primary-vnet"
    resource_group_name = "my-resource-group"
    subnet_configuration_data = [
      {
        address_prefixes = ["10.128.0.0/24"]
        name             = "vnet-1-subnet-1"
      }
    ]
    tags = {
      Name = "vnet-1"
    }
  },
  {
    address_space       = ["10.192.0.0/16"]
    location            = "westus"
    name                = "my-secondary-vnet"
    resource_group_name = "my-resource-group"
    subnet_configuration_data = [
      {
        address_prefixes = ["10.192.0.0/24"]
        name             = "vnet-2-subnet-1"
      }
    ]
    tags = {
      Name = "vnet-2"
    }
  }
]
