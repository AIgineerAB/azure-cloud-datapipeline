variable "prefix_app_name" {
  description = "App name used before each resource name"
  default     = "yh-dashboard"
}

resource "azurerm_resource_group" "yh_dashboard_rg" {
  name     = "${var.prefix_app_name}-rg"
  location = "swedencentral"
}

resource "azurerm_container_registry" "acr" {
  name                = "acr${random_integer.number.result}"
  resource_group_name = azurerm_resource_group.yh_dashboard_rg.name
  location            = azurerm_resource_group.yh_dashboard_rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_service_plan" "asp" {
  name                = "${var.prefix_app_name}-asp"
  resource_group_name = azurerm_resource_group.yh_dashboard_rg.name
  location            = azurerm_resource_group.yh_dashboard_rg.location
  os_type             = "Linux"
  sku_name            = "S1"
}

resource "azurerm_linux_web_app" "app" {
  name                = "${var.prefix_app_name}-app"
  resource_group_name = azurerm_resource_group.yh_dashboard_rg.name
  location            = azurerm_resource_group.yh_dashboard_rg.location
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    application_stack {
      docker_image_name   = "${azurerm_container_registry.acr.login_server}/${var.prefix_app_name}:latest"
      docker_registry_url = "https://${azurerm_container_registry.acr.login_server}"
    }
  }
}


