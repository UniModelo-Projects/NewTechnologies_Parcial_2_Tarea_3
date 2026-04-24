resource "azurerm_container_registry" "acr" {
  name                = "${replace(var.app_name, "-", "")}acr" # ACR no permite guiones
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}
