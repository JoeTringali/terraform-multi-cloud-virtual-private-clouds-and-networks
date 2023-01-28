## AWS Variables

enable_aws = true
aws_vpc_configuration_data = [
  {
    cidr_block = "10.0.0.0/16"
    region     = "us-east-1"
  },
  {
    cidr_block = "10.64.0.0/16"
    region     = "us-west-1"
  }
]

## Azure Variables

azure_virtual_network_configuration_data = [
  {
    address_space       = ["10.128.0.0/16"]
    location            = "eastus"
    name                = "my-primary-vn"
    resource_group_name = "my-resource-group"
  },
  {
    address_space       = ["10.192.0.0/16"]
    location            = "westus"
    name                = "ny-secondary-vn"
    resource_group_name = "my-resource-group"
  }
]
