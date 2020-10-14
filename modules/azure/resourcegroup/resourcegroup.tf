# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.rsc_name
  location = var.location_id
  tags     = var.tags
}
