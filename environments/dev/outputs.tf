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

output "primary_blob_endpoint" {
  value = module.storage.primary_blob_endpoint
}

output "app_service_url" {
  value = module.appservice.app_service_url
}

output "app_service_name" {
  value = module.appservice.app_service_name
}
