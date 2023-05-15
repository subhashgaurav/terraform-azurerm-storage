resorce "azurerm_resource_group" "rg-1" {
  name = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "sa-1" {
  name = var.sa_name
  resource_group_name = azurerm_resource_group.rg-1.name
  location = azurerm_resource_group.rg-1.location
  account_replication_type = "LRS"
  account_tier = "Standard
  
  }
  
