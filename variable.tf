variable "location" {
  type        = string
  description = "Region for the deployment"
  default     = "East US"
}

variable "resource_group_name" {
  type        = string
  default     = "sharik-bastion-project-rg"
}

variable "admin_username" {
  type        = string
  default     = "sharikadmin"
}

variable "admin_password" {
  type        = string
  sensitive   = true # this will not show password in logs
  description = "Password for both VMs"
}