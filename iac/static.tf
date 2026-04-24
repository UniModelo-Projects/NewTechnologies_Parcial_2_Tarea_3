resource "azurerm_static_web_app" "static" {
  name                = "${var.app_name}-static"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "centralus" # Probando con Central US
  sku_tier            = "Free"
  sku_size            = "Free"
}

output "static_site_default_host_name" {
  value = azurerm_static_web_app.static.default_host_name
}

output "static_site_api_key" {
  value     = azurerm_static_web_app.static.api_key
  sensitive = true
}
