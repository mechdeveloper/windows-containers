# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.23.0"
    }
  }

  # Terraform cloud configuration
  cloud {
    organization = "learn-azure-dev"
    workspaces {
      name = "terraform-azure"
    }
  }
}
