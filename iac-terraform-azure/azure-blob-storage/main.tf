resource "azurerm_resource_group" "example" {
  name     = var.arg_name
  location = var.arg_location
}

resource "azurerm_storage_account" "example" {
  name                     = var.asa_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.asa_tier
  account_replication_type = var.asa_replication
}

resource "azurerm_storage_container" "example" {
  name                  = var.asc_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = var.asc_container_acces_type
}

resource "azurerm_storage_blob" "example" {
  name                   = var.asb_name
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = var.asb_type
  source                 = var.asb_source
}