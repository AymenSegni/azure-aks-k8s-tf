variable "subnet_name" {
  description = "name to give the subnet"
  default     = "default-subnet"
}

variable "resource_group_name" {
  description = "resource group that the vnet resides in"
  default     = "Run IT on Cloud"
}

variable "vnet_name" {
  description = "name of the vnet that this subnet will belong to"
  default     = "vnet"
}

variable "subnet_cidr" {
  description = "the subnet cidr range"
  default     = "10.0.1.0/24"
}
