variable "resource_group_name" {
  type        = string
  default     = "rg-modern-bastion-lab"
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  default     = "East US"
  description = "Azure Region for deployment"
}

variable "vnet_name" {
  type        = string
  default     = "vnet-bastion-lab"
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  type        = string
  sensitive   = true # Isse password CLI logs me dikhega nahi
  description = "VM admin password loaded from tfvars"
}