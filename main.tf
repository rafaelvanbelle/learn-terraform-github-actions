# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
# update

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {
    
  }
}


data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-github-actions"
  location = "West Europe"
  tags = {
    contact  = "rafael@dataroots.io"
    customer = "internal"
  }
}