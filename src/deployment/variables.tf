variable "client_id" {}

variable "client_secret" {}

variable "node_count" {
  description = "number of nodes to deploy"
  default     = 3
}

variable "dns_prefix" {
  description = "DNS Suffix"
  default     = "runitoncloud"
}

variable cluster_name {
  description = "AKS cluster name"
  default     = "runItOnCloud"
}

variable resource_group_name {
  description = "name of the resource group to deploy AKS cluster in"
  default     = "runitoncloud"
}

variable location {
  description = "azure location to deploy resources"
  default     = "Europe West"
}

variable log_analytics_workspace_name {
  default = "testLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
  default = "eastus"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing
variable log_analytics_workspace_sku {
  default = "PerGB2018"
}

variable subnet_name {
  description = "subnet id where the nodes will be deployed"
  default     = "aks-subnet"
}

variable vnet_name {
  description = "vnet id where the nodes will be deployed"
  default     = "aks-vnet"
}

variable subnet_cidr {
  description = "the subnet cidr range"
  default     = "10.0.1.0/24"
}

variable kubernetes_version {
  description = "version of the kubernetes cluster"
  default     = "1.16.10"
}

variable "vm_size" {
  description = "size/type of VM to use for nodes"
  default     = "Standard_D15_v2"
}

variable "os_type" {
  description = "type of OS to run on nodes"
  default     = "Linux"
}

variable "os_disk_size_gb" {
  description = "size of the OS disk to attach to the nodes"
  default     = 512
}

variable "max_pods" {
  description = "maximum number of pods that can run on a single node"
  default     = "100"
}

variable "address_space" {
  description = "The address space that is used the virtual network"
  default     = "10.0.0.0/16"
}













