output "virtual_network_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.vn.*.id
}

output "subnet_ids" {
  description = "Subnet IDs"
  value       = azurerm_subnet.subnet.*.id
}
