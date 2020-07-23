# Cluster Resource Group

resource "azurerm_resource_group" "aks" {
  name     = var.resource_group_name
  location = var.location
}

# AKS Cluster Network

module "aks_network" {
  source              = "../modules/aks_network"
  subnet_name         = var.subnet_name
  vnet_name           = var.vnet_name
  resource_group_name = azurerm_resource_group.aks.name
  subnet_cidr         = var.subnet_cidr
  location            = var.location
  address_space       = var.address_space
}

# AKS IDs

module "aks_identities" {
  source       = "../modules/aks_identities"
  cluster_name = var.cluster_name
}

# AKS Log Analytics

module "log_analytics" {
  source                           = "../modules/log_analytics"
  resource_group_name              = azurerm_resource_group.aks.name
  log_analytics_workspace_location = var.log_analytics_workspace_location
  log_analytics_workspace_name     = var.log_analytics_workspace_name
  log_analytics_workspace_sku      = var.log_analytics_workspace_sku
}


# AKS Cluster

module "aks_cluster" {
  source                   = "../modules/aks-cluster"
  cluster_name             = var.cluster_name
  location                 = var.location
  dns_prefix               = var.dns_prefix
  resource_group_name      = azurerm_resource_group.aks.name
  kubernetes_version       = var.kubernetes_version
  node_count               = var.node_count
  min_count                = var.min_count
  max_count                = var.max_count
  os_disk_size_gb          = "1028"
  max_pods                 = "110"
  vm_size                  = var.vm_size
  vnet_subnet_id           = module.aks_network.aks_subnet_id
  client_id                = module.aks_identities.cluster_client_id
  client_secret            = module.aks_identities.cluster_sp_secret
  diagnostics_workspace_id = module.log_analytics.azurerm_log_analytics_workspace
}







