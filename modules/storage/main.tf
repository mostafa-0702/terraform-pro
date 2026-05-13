############# STORAGE ACCOUNT ############
resource "azurerm_storage_account" "st" {
  name                     = "st${var.project_name}${var.environment}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}
