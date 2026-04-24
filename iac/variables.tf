variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-tarea3-newtech"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "app_name" {
  description = "Base name for the application resources"
  type        = string
  default     = "app-tarea3-nt"
}

variable "sku_name" {
  description = "The SKU name for the App Service Plan"
  type        = string
  default     = "B1"
}
