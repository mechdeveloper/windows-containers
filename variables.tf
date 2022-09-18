variable "resource_group_location" {
  default     = "westeurope"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "vm_username" {
  description = "Windows Server administrator username"
  type        = string
  sensitive   = true
}

variable "vm_password" {
  description = "Windows Server administrator password"
  type        = string
  sensitive   = true
}