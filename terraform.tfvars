## AWS Variables

enable_aws      = true
aws_cidr_blocks = ["10.0.0.0/16", "10.64.0.0/16"]

## Azure Variables

enable_azure                  = true
azure_resource_group_name     = "my-resource-group"
azure_virtual_network_names   = ["my-primary-vn", "my-secondary-vn"]
azure_address_spaces          = [["10.128.0.0/16"], ["10.192.0.0/16"]]
