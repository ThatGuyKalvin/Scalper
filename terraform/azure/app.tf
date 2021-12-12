resource "azurerm_resource_group" "rg" {
  name = var.resource_group
  location = var.location
  tags = var.tags
}

resource "azurerm_storage_account" "app" {
  name = "${var.app_name_no_spaces}sa"
  location = var.location
  resource_group_name = var.resource_group

  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = var.tags

  depends_on = [
      azurerm_resource_group.rg
  ]
}

resource "azurerm_app_service_plan" "app_asp" {
  name = "${var.app_name}-asp"
  location = var.location
  resource_group_name = var.resource_group
  tags = var.tags

  kind = "linux"
  reserved = true
  
  sku {
    tier = "Free"
    size = "F1"
  }

  depends_on = [
      azurerm_resource_group.rg
  ]
}

resource "azurerm_app_service" "webapp" {
  name                = "${var.app_name}-app"
  location = var.location
  resource_group_name = var.resource_group
  app_service_plan_id = azurerm_app_service_plan.app_asp.id

  source_control {
    repo_url           = "https://github.com/Azure-Samples/nodejs-docs-hello-world"
    branch             = "master"
    manual_integration = true
    use_mercurial      = false
  }

  site_config {
    linux_fx_version = "NODE|14-lts"
  }

  app_settings = {
    "environment": jsonencode(local.container_env)
  }

  depends_on = [
      azurerm_resource_group.rg
  ]
}

locals {
  container_env = [for k, v in var.streetmerchant_env : { name: k, value: v}]
}