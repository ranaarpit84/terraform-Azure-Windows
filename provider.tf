# provider required for windows 2022 server

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.80.0"
    }
  }
}
# provider credentials
provider "azurerm" {
  subscription_id = var.subscription-id
  client_id = var.client-id
  client_secret = var.client-secret
  tenant_id = var.tenant-id
  features {}
    
  }