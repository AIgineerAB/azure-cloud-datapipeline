resource "azurerm_resource_group" "storage_rg" {
  name     = "storage-rg"
  location = var.location
}
