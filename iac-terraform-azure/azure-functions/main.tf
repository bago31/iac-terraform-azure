resource "azurerm_resource_group" "test_arg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "test_asa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.test_arg.name
  location                 = azurerm_resource_group.test_arg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_service_plan" "test_asp" {
  name                = var.app_service_plan_name
  sku_name            = var.sku_name
  os_type = var.os_type
  location            = azurerm_resource_group.test_arg.location
  resource_group_name = azurerm_resource_group.test_arg.name
}

resource "azurerm_linux_function_app" "test_alfa" {
  name                = var.linux_function_app_name
  resource_group_name = azurerm_resource_group.test_arg.name
  location            = azurerm_resource_group.test_arg.location

  storage_account_name       = azurerm_storage_account.test_asa.name
  storage_account_access_key = azurerm_storage_account.test_asa.primary_access_key
  service_plan_id            = azurerm_service_plan.test_asp.id

  site_config {}
}
resource "azurerm_function_app" "test_afa" {
  name                       = "test-azure-functions"
  location                   = azurerm_resource_group.test_arg.location
  resource_group_name        = azurerm_resource_group.test_arg.name
  app_service_plan_id        = azurerm_service_plan.test_asp.id
  storage_account_access_key = azurerm_storage_account.test_asa.name
  storage_account_name = azurerm_storage_account.test_asa.primary_access_key
}


