## AWS Variables

aws_vpc_configuration_data = [
  {
    cidr_block                = "10.0.0.0/16"
    region                    = "us-east-1"
    subnet_configuration_data = [
      {
        availability_zone     = "us-east-1a"
        cidr_block            = "10.0.0.0/24"
        tags                  = {
          Name                = "vpc-1-dmz-subnet-1"
        }
      },
      {
        availability_zone     = "us-east-1b"
        cidr_block            = "10.0.1.0/24"
        tags                  = {
          Name                = "vpc-1-dmz-subnet-2"
        }
      },
      {
        availability_zone     = "us-east-1c"
        cidr_block            = "10.0.2.0/24"
        tags                  = {
          Name                = "vpc-1-dmz-subnet-3"
        }
      }
    ]
    tags                      = {
      Name                    = "vpc-1"
    }
  },
  {
    cidr_block = "10.32.0.0/16"
    region     = "us-west-1"
    subnet_configuration_data = [
      {
        availability_zone     = "us-west-1c"
        cidr_block            = "10.32.0.0/24"
        tags                  = {
          Name                = "vpc-2-dmz-subnet-1"
        }
      },
      {
        availability_zone     = "us-west-1b"
        cidr_block            = "10.32.1.0/24"
        tags                  = {
          Name                = "vpc-2-dmz-subnet-2"
        }
      },
      {
        availability_zone     = "us-west-1c"
        cidr_block            = "10.32.2.0/24"
        tags                  = {
          Name                = "vpc-2-dmz-subnet-3"
        }
      }
    ]
    tags                      = {
      Name                    = "vpc-2"
    }
  }
]

## Azure Variables

azure_virtual_network_configuration_data = [
  {
    address_space             = ["10.64.0.0/16"]
    location                  = "eastus"
    name                      = "my-primary-vn"
    resource_group_name       = "my-resource-group"
    subnet_configuration_data = [
    ]
    tags                      = {
      Name                    = "vn-1"
    }
  },
  {
    address_space             = ["10.96.0.0/16"]
    location                  = "westus"
    name                      = "my-secondary-vn"
    resource_group_name       = "my-resource-group"
    subnet_configuration_data = [
    ]
    tags                      = {
      Name                    = "vn-2"
    }
  }
]
