############# RG ###############
resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.project_name}-${var.environment}"
  location = var.location

  tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}

############# MODULE NETWORKING ###############
module "networking" {
  source = "../../modules/networking"

  location            = var.location
  project_name        = var.project_name
  environment         = var.environment
  resource_group_name = azurerm_resource_group.rg.name
}

############# MODULE STORAGE ###############
module "storage" {
  source = "../../modules/storage"

  location            = var.location
  project_name        = var.project_name
  environment         = var.environment
  resource_group_name = azurerm_resource_group.rg.name
}

############# MODULE APPSERVICE ###############
module "appservice" {
  source = "../../modules/appservice"

  location            = var.location
  project_name        = var.project_name
  environment         = var.environment
  resource_group_name = azurerm_resource_group.rg.name
  subnet_id           = module.networking.subnet_id
}
### merge