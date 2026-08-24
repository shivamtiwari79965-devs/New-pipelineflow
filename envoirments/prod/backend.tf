terraform {
  backend "azurerm" {
    resource_group_name  = "mustang-rg"
    storage_account_name = "meradabba"
    container_name        = "mine"
    key                   = "state.tf"
  }
}