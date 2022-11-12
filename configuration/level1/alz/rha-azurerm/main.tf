
provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {}


data "azurerm_management_group" "LAZ-VCF" {
  #put management group id here
  name = "LAZ-VCF-UY2fQ"
}

data "azurerm_management_group" "LEGACY-LAZ-VCF" {
  #put management group id here
  name = "LEGACY-LAZ-VCF"
}

data "azurerm_management_group" "MGMT_GROUP_VCF" {
  #put management group id here
  name = "MGMT_GROUP_VCF"
}
