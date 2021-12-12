variable "location" {
  type  = string
  description = "region"
  default = "eastus"
}

variable "resource_group" {
  type = string
  description = "resource group for app"
  default = "streetmerchant-rg"
}

variable "app_name_no_spaces" {
  type = string
  default = "kjsmapp"
}

variable "app_name" {
  type = string
  default = "kj-sm-app"
}

variable "tier" {
  type = string
  default = "Free"
  description = "app service plan tier"
}

variable "size" {
  type = string
  default = "F1"
  description = "app service plan size"
}

variable "streetmerchant_env" {
  type = map
  description = "name/value pairs for .env values"
  default = {}
}

variable "tags" {
  type = map
  description = "name/value pairs for tags"
  default = {}
}
