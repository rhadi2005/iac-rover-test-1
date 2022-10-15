
#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment
#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_exemption
#https://learn.microsoft.com/en-us/azure/governance/policy/assign-policy-terraform
#https://shisho.dev/dojo/providers/azurerm/Policy/azurerm-management-group-policy-assignment/ 
#https://github.com/hashicorp/terraform-provider-azurerm/blob/main/website/docs/d/management_group.html.markdown


provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {}


data "azurerm_management_group" "rha-root" {
  #put management group id here
  name = "rha-root"
}

data "azurerm_management_group" "rha-legacy" {
  #put management group id here
  name = "MGT_RHA"
}

resource "azurerm_management_group_policy_assignment" "auditvms" {

  management_group_id  = data.azurerm_management_group.rha-root.id
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/06a78e20-9358-41c9-923c-fb736d382a4d"

  not_scopes = ["/providers/Microsoft.Management/managementGroups/MGT_RHA"]

  name         = "audit-vm-manageddisks"
  description  = "Shows all virtual machines not using managed disks"
  display_name = "Audit VMs without managed disks assignment"
  enforce      = true

  #parameters           = var.parameters != null ? jsonencode(var.parameters) : null

  location = "francecentral"
}

resource "azurerm_management_group_policy_assignment" "allowedlocation" {

  management_group_id  = data.azurerm_management_group.rha-root.id
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"

  not_scopes = ["/providers/Microsoft.Management/managementGroups/MGT_RHA"]

  name         = "allowed-locations"
  description  = "Specifies the allowed locations (regions) where Resources can be deployed"
  display_name = "Limit allowed locations for Resources"
  enforce      = false

  parameters = jsonencode(
    { "listOfAllowedLocations" : {
      "value" : ["francecentral", "francesouth"] }
  })

  location = "francecentral"
}

/* clarify policy exemption
resource "azurerm_management_group_policy_exemption" "dc-legacy" {
  management_group_id = data.azurerm_management_group.rha-legacy.id 
  policy_assignment_id = azurerm_management_group_policy_assignment.auditvms.id

  name                 = "dc-legacy-1"

  exemption_category   = "Mitigated"
}
*/


#terraform import azurerm_management_group.mymg /providers/Microsoft.Management/managementGroups/MGT_RHA
#terraform import azurerm_management_group.mymg /providers/Microsoft.Management/managementGroups/rha-root




