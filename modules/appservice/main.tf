############# APP SERVICE PLAN ############
resource "azurerm_service_plan" "asp" {
  name                = "asp-${var.project_name}-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "B1"

  tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}

############# APP SERVICE ############
resource "azurerm_linux_web_app" "app" {
  name                = "app-${var.project_name}-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    always_on = false
  }

  tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}
