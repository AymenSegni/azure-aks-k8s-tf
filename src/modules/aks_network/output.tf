output "aks_subnet_id" {
  value = azurerm_subnet.aks_vnet.id
}
output "aks_vnet_id" {
  value = azurerm_subnet.aks_subnet.id
}

