output "sql_server_name" {
  value = azurerm_mssql_server.sql.name
}

output "sql_server_id" {
  value = azurerm_mssql_server.sql.id
}

output "sql_database_name" {
  value = azurerm_mssql_database.sqldb.name
}

output "sql_server_fqdn" {
  value = azurerm_mssql_server.sql.fully_qualified_domain_name
}
