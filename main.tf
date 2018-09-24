provider "azurerm" {
  subscription_id = "XXXXXX"
  tenant_id       = "XXXXXX"
}

resource "azurerm_resource_group" "rg01" {
  name     = "rg.aks.terraform"
  location = "westeurope"
}

resource "azurerm_storage_account" "sa01" {
  access_tier              = "Hot"
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = "westeurope"
  resource_group_name      = "${azurerm_resource_group.rg01.name}"
  name                     = "saaksterraform"
}
