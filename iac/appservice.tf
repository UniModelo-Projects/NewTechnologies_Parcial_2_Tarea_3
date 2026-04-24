resource "azurerm_service_plan" "asp" {
  name                = "${var.app_name}-asp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = var.sku_name
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "${var.app_name}-webapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.asp.location
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    always_on = true
    # Dejamos esto vacío para que manden las variables de entorno (Modo Clásico)
  }

  app_settings = {
    "DOCKER_CUSTOM_IMAGE_NAME"            = "apptarea3ntacr.azurecr.io/azure-demo-app:latest"
    "DOCKER_REGISTRY_SERVER_URL"          = "https://apptarea3ntacr.azurecr.io"
    "DOCKER_REGISTRY_SERVER_USERNAME"     = azurerm_container_registry.acr.admin_username
    "DOCKER_REGISTRY_SERVER_PASSWORD"     = azurerm_container_registry.acr.admin_password
    "WEBSITES_PORT"                       = "8080"
    "WEBSITES_CONTAINER_START_TIME_LIMIT" = "1800"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_role_assignment" "acr_pull" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_linux_web_app.webapp.identity[0].principal_id
}

output "webapp_url" {
  value = azurerm_linux_web_app.webapp.default_hostname
}
