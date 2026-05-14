output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_id" {
  value = azurerm_subnet.snet.id
}

output "subnet_name" {
  value = azurerm_subnet.snet.name
}

output "nsg_id" {
  value = azurerm_network_security_group.nsg.id
}
