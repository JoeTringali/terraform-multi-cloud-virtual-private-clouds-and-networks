terraform {
  required_version = ">= 1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.37"
    }
  }
}

provider "aws" {
  alias  = "primary"
  region = var.aws_region_names[0]
}

provider "aws" {
  alias  = "secondary"
  region = var.aws_region_names[1]
}

provider "azurerm" {
  features {}
  alias                      = "primary"
  skip_provider_registration = true
}

provider "azurerm" {
  features {}
  alias                      = "secondary"
  skip_provider_registration = true
}
