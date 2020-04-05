terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  version = "~> 2.4"
  features {}
}
