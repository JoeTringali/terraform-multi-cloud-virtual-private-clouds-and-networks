# Deploy AWS Virtual Private Clouds (VPCs) and/or Azure Virtual Networks using Terraform

## Introduction

Using this repository you will be able to deploy [AWS virtual private clouds (VPCs)](https://docs.aws.amazon.com/vpc/?icmpid=docs_homepage_featuredsvcs) and/or [Azure virtual networks](https://learn.microsoft.com/en-us/azure/virtual-network/) using [Terraform](https://developer.hashicorp.com/terraform/docs). You will use modules, variables, and outputs to accomplish this deployment. You should be able to choose which cloud environment you would like to deploy the resources to and even do the deployment simultaneously.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

## Prerequisites

Before you get started with deploying the solution, you must install the
following prerequisites:

1.  [AWS Command Line Interface (AWS CLI)](https://aws.amazon.com/cli/)
    -- for instructions, see [Installing the AWS
    CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)

1. [Azure Command Line Interface (Azure CLI)](https://learn.microsoft.com/en-us/cli/azure/) 
    -- for instructions, see [How to Install the Azure 
    CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

1.  [Terraform](https://developer.hashicorp.com/terraform/docs)
    -- for instructions, see [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Deploying the solution

The below steps deploy the reference implementation in AWS and/or Azure.

To deploy run the following commands from a
terminal session:

1.  Download code from GitHub repo
    (<https://github.com/JoeTringali/terraform-multi-cloud-virtual-private-clouds-and-virtual-networks>).

2.  Edit the terraform.tfvars file to include the configuration data for the AWS VPCs and/or Azure virtual networks to be created:

```
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

enable_azure = true
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
```

3. Initialize the working directory:

```
  terraform init
```

4.  Make sure `providers.tf` is formatted correctly:

```
  terraform fmt
```

5. See what it's expecting for the resource group:

```
  terraform plan
```
> You should then see what the outputs will produce.

6.  Deploy your AWS VPCs and/or Azure virtual networks:

```
terraform apply
```

7. Enter `yes` at the prompt. It will then take a few minutes to finish running.

8. Monitor the progress and wait for the completion of the ```terraform apply``` command before
proceeding.

9. Confirm that resources were deployed:

```
terraform state list
```

10. Check the returned list of resources to ensure everything was successfully deployed.

11. In the [AWS Management Console browser window](https://aws.amazon.com/console/), navigate to **VPC** to verify that your VPCs are listed.

12. In the [Azure Portal browser window](https://portal.azure.com/#home), navigate to **Virtual networks** and confirm that your virtual networks are listed.

## Cleanup

To avoid ongoing charges for resources you created, run the following command from a
terminal session:

```
  terraform apply -destroy 
```

or 

```
  terraform destroy
```
