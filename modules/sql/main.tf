############# SQL SERVER ############
resource "azurerm_mssql_server" "sql" {
  name                         = "sql-${var.project_name}-${var.environment}"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_login
  administrator_login_password = var.sql_admin_password

  tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}

############# SQL DATABASE ############
resource "azurerm_mssql_database" "sqldb" {
  name      = "sqldb-${var.project_name}-${var.environment}"
  server_id = azurerm_mssql_server.sql.id
  sku_name  = "Basic"

  tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}
