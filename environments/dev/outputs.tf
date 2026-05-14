output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_name" {
  value = module.networking.vnet_name
}

output "subnet_name" {
  value = module.networking.subnet_name
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "app_service_url" {
  value = module.appservice.app_service_url
}

output "security_rg_location" {
  value = data.azurerm_resource_group.security.location
}

output "current_tenant_id" {
  value = data.azurerm_client_config.current.tenant_id
}
