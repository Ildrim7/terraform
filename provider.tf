terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.71.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "f9909b4a-a62c-47d4-a0f0-1b5427ca0ea2"
  tenant_id         = "7c70a9ee-ea02-4fa5-a855-2345f7c31f75"
  client_id         = "67b950d6-f26a-4267-b061-cc72436248e0"
  client_secret     = "No98Q~1mnJTVkzbWOg3ycoYYG3RwnMCdxZvu2cRL"
  features {}
}
