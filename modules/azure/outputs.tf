output "virtual_network_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.vn.*.id
}
