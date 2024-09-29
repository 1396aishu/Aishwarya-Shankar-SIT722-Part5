#
# Creates a resource group for FlixTube in your Azure account.
#
resource "azurerm_resource_group" "rg08" {
  name     = "rg08"
  location = var.location
}
