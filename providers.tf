terraform {
  required_version = ">=0.12"

  backend "azurerm" {
    resource_group_name  = "rtv-resources"
    storage_account_name = "storagekri1z"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }



  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}