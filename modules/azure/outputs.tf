output "resource_group_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.rg.*.id
}

output "virtual_network_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.vn.*.id
}
