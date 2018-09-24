provider "azurerm" {
  subscription_id = "52eb3891-6f09-4350-8707-4dc848cba302"
  tenant_id       = "72f988bf-86f1-41af-91ab-2d7cd011db47"
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
