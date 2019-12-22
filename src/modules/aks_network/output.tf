output "aks_subnet_id" {
  value = azurerm_subnet.aks_subnet.id
}
output "aks_vnet_id" {
  value = azurerm_virtual_network.aks_vnet.id
}

