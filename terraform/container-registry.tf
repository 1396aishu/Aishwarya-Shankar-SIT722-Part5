#
# Creates a container registry on Azure so that you can publish your Docker images.
#
resource "azurerm_container_registry" "registry08" {
  name                = "registry08"
  resource_group_name = azurerm_resource_group.rg08.name
  location            = var.location
  admin_enabled       = true
  sku                 = "Basic"
}

output "acr_login_server" {
  value = azurerm_container_registry.registry08.login_server
}

output "registry_name" {
  value = azurerm_container_registry.registry08.name
}