terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.87.0"
    }
  }

  backend "azurerm" {
      key = "streetmerchant.tfstate"
      resource_group_name  = "tfstate-rg"
      storage_account_name = "kjstreetmerchantstatesa"
      container_name       = "tfstate-c"
  }
}

provider "azurerm" {
  features {}
}