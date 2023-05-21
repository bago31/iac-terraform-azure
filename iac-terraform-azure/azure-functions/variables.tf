variable "resource_group_name" {
  description = "Test name"
  type = string
}
variable "sku_name" {
  description = "SKU name"
  type        = string
}
variable "os_type" {
  description = "os_type"
  type = string
}

variable "location" {
    description = "Location name"
    type = string
}

variable "storage_account_name" {
  description = "Account name"
  type = string
}

variable "storage_account_tier" {
  description = "Account tier storage"
  type        = string
}

variable "storage_account_replication_type" {
  description = "Type replication"
  type        = string
}

variable "app_service_plan_name" {
  description = "Service plan name"
  type        = string
}

variable "app_service_plan_sku_tier" {
  description = "Plan sku tier"
  type        = string
}

variable "app_service_plan_sku_size" {
  description = "Plan Sku size"
  type        = string
}

variable "linux_function_app_name" {
  description = "Linux app name"
  type        = string
}

variable "function_app_function_name" {
  description = "Function name"
  type        = string
}