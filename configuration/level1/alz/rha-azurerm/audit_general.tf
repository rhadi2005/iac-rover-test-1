


resource "azurerm_management_group_policy_assignment" "audit_general" {

  management_group_id = data.azurerm_management_group.LAZ-VCF.id

  #policy_definition_id = "/providers/Microsoft.Management/managementGroups/${data.azurerm_management_group.LAZ-VCF.name}/providers/Microsoft.Authorization/policyDefinitions/vcf-audit-general"
  policy_definition_id = azurerm_policy_set_definition.audit_general.id

  not_scopes = ["/providers/Microsoft.Management/managementGroups/${data.azurerm_management_group.LEGACY-LAZ-VCF.name}"]

  name         = "vcf-audit-general-assign"
  description  = "VCF Audit General assignment"
  display_name = "VCF Audit General assignment"
  enforce      = false
  /*
  parameters = jsonencode(
    {
      "listOfAllowedLocations" : {
      "value" : ["westeurope"] }
  })
*/
  #location = "westeurope"
}


/*
resource "azurerm_management_group_policy_assignment" "allowedlocation" {

  management_group_id  = data.azurerm_management_group.LAZ-VCF.id
  
  #custom policy to set effect as audit
  #policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
  #/providers/Microsoft.Management/managementGroups/LAZ-VCF-UY2fQ/providers/Microsoft.Authorization/policyDefinitions/vcf-allowed-locations
  policy_definition_id = "/providers/Microsoft.Management/managementGroups/${data.azurerm_management_group.LAZ-VCF.name}/providers/Microsoft.Authorization/policyDefinitions/vcf-allowed-locations"

  not_scopes = ["/providers/Microsoft.Management/managementGroups/${data.azurerm_management_group.LEGACY-LAZ-VCF.name}"]

  name         = "allowed-locations"
  description  = "Specifies the allowed locations (regions) where Resources can be deployed"
  display_name = "Limit allowed locations for Resources"
  enforce      = false

  parameters = jsonencode(
    {
      "listOfAllowedLocations" : {
      "value" : ["westeurope"] }
  })

  #location = "westeurope"
}
*/
