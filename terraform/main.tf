# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "project2-rg"
  location = "East US"
}

# Azure Container Registry
resource "azurerm_container_registry" "acr" {
  name                = "project2acr"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

