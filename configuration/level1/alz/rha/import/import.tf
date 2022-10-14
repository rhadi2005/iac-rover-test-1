provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {}

#https://github.com/hashicorp/terraform-provider-azurerm/blob/main/website/docs/d/management_group.html.markdown
data "azurerm_management_group" "example" {
  name = "00000000-0000-0000-0000-000000000000"
}


resource "azurerm_management_group" "rha-root" {
  display_name = "test mgt grp with uppercase id"

  #parent_management_group_id = "${azurerm_management_group.example_parent.id}"
  #parent_management_group_id = "var.parent_management_group_id"

  #subscription_ids = [
  #  "${data.azurerm_subscription.current.id}"
  #  # other subscription IDs can go here
  #]
}