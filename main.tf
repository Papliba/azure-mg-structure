provider "azurerm" {
  features {}
  subscription_id = "e4403c08-7702-43b0-82c7-32b902aa0933"
}

# Tenant Root Group
data "azurerm_management_group" "Tenant-Root-Group" {
  display_name = "Tenant Root Group"
}

# Papliba Mg
resource "azurerm_management_group" "Papliba" {
       display_name = "Papliba"
       parent_management_group_id = data.azurerm_management_group.Tenant-Root-Group.id
}

# Dev Mg
resource "azurerm_management_group" "Dev" {
       display_name = "Dev"
       parent_management_group_id = azurerm_management_group.Papliba.id
}

# Dev Platform Mg
resource "azurerm_management_group" "Dev-Platform" {
       display_name               = "Platform"
       parent_management_group_id = azurerm_management_group.Dev.id
}

# Dev Management Mg
resource "azurerm_management_group" "Dev-Management" {
       display_name               = "Management"
       parent_management_group_id = azurerm_management_group.Dev-Platform.id
}

# Dev Identity Mg
resource "azurerm_management_group" "Dev-Identity" {
       display_name               = "Identity"
       parent_management_group_id = azurerm_management_group.Dev-Platform.id
}

# Dev Connectivity Mg
resource "azurerm_management_group" "Dev-Connectivity" {
       display_name               = "Connectivity"
       parent_management_group_id = azurerm_management_group.Dev-Platform.id
}

# Dev Landing zone Mg
resource "azurerm_management_group" "Dev-LandingZone" {
       display_name               = "LandingZone"
       parent_management_group_id = azurerm_management_group.Dev.id
}

# Dev online Mg
resource "azurerm_management_group" "Dev-Online" {
       display_name               = "Online"
       parent_management_group_id = azurerm_management_group.Dev-LandingZone.id
}

# Dev corp Mg
resource "azurerm_management_group" "Dev-Corp" {
       display_name               = "Corp"
       parent_management_group_id = azurerm_management_group.Dev-LandingZone.id
}

# Dev Decommissioned Mg
resource "azurerm_management_group" "Dev-Decommissioned" {
       display_name               = "Decommissioned"
       parent_management_group_id = azurerm_management_group.Dev.id
}

# Dev Sandbox Mg
resource "azurerm_management_group" "Dev-Sandbox" {
       display_name               = "Sandbox"
       parent_management_group_id = azurerm_management_group.Dev.id
}

# Test Mg
resource "azurerm_management_group" "Test" {
    display_name = "Test"
    parent_management_group_id = azurerm_management_group.Papliba.id
}

# Test Platform Mg
resource "azurerm_management_group" "Test-Platform" {
    display_name               = "Platform"
    parent_management_group_id = azurerm_management_group.Test.id
}

# Test Management Mg
resource "azurerm_management_group" "Test-Management" {
    display_name               = "Management"
    parent_management_group_id = azurerm_management_group.Test-Platform.id
}

# Test Identity Mg
resource "azurerm_management_group" "Test-Identity" {
    display_name               = "Identity"
    parent_management_group_id = azurerm_management_group.Test-Platform.id
}

# Test Connectivity Mg
resource "azurerm_management_group" "Test-Connectivity" {
    display_name               = "Connectivity"
    parent_management_group_id = azurerm_management_group.Test-Platform.id
}

# Test Landing zone Mg
resource "azurerm_management_group" "Test-LandingZone" {
    display_name               = "LandingZone"
    parent_management_group_id = azurerm_management_group.Test.id
}

# Test online Mg
resource "azurerm_management_group" "Test-Online" {
    display_name               = "Online"
    parent_management_group_id = azurerm_management_group.Test-LandingZone.id
}

# Test corp Mg
resource "azurerm_management_group" "Test-Corp" {
    display_name               = "Corp"
    parent_management_group_id = azurerm_management_group.Test-LandingZone.id
}

# Test Decommissioned Mg
resource "azurerm_management_group" "Test-Decommissioned" {
    display_name               = "Decommissioned"
    parent_management_group_id = azurerm_management_group.Test.id
}

# Test Sandbox Mg
resource "azurerm_management_group" "Test-Sandbox" {
    display_name               = "Sandbox"
    parent_management_group_id = azurerm_management_group.Test.id
}


# Prod Mg
resource "azurerm_management_group" "Prod" {
    display_name = "Prod"
    parent_management_group_id = azurerm_management_group.Papliba.id
}

# Prod Platform Mg
resource "azurerm_management_group" "Prod-Platform" {
    display_name               = "Platform"
    parent_management_group_id = azurerm_management_group.Prod.id
}

# Prod Management Mg
resource "azurerm_management_group" "Prod-Management" {
    display_name               = "Management"
    parent_management_group_id = azurerm_management_group.Prod-Platform.id
}

# Prod Identity Mg
resource "azurerm_management_group" "Prod-Identity" {
    display_name               = "Identity"
    parent_management_group_id = azurerm_management_group.Prod-Platform.id
}

# Prod Connectivity Mg
resource "azurerm_management_group" "Prod-Connectivity" {
    display_name               = "Connectivity"
    parent_management_group_id = azurerm_management_group.Prod-Platform.id
}

# Prod Landing zone Mg
resource "azurerm_management_group" "Prod-LandingZone" {
    display_name               = "LandingZone"
    parent_management_group_id = azurerm_management_group.Prod.id
}

# Prod online Mg
resource "azurerm_management_group" "Prod-Online" {
    display_name               = "Online"
    parent_management_group_id = azurerm_management_group.Prod-LandingZone.id
}

# Prod corp Mg
resource "azurerm_management_group" "Prod-Corp" {
    display_name               = "Corp"
    parent_management_group_id = azurerm_management_group.Prod-LandingZone.id
}

# Prod Decommissioned Mg
resource "azurerm_management_group" "Prod-Decommissioned" {
    display_name               = "Decommissioned"
    parent_management_group_id = azurerm_management_group.Prod.id
}

# Prod Sandbox Mg
resource "azurerm_management_group" "Prod-Sandbox" {
    display_name               = "Sandbox"
    parent_management_group_id = azurerm_management_group.Prod.id
}
