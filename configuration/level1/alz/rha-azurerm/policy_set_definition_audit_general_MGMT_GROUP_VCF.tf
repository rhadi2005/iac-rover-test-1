resource "azurerm_policy_set_definition" "audit_general_MGMT_GROUP_VCF" {

  management_group_id = data.azurerm_management_group.MGMT_GROUP_VCF.id

  name        = "vcf-audit-general"
  policy_type = "Custom"

  display_name = "VCF Audit General Policy Set"
  description  = "VCF Audit General Policy Set"

  parameters = null

  policy_definition_reference {
    #1
    #policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988"

    #allowed-locations
    #custom policy to set effect as audit
    #policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
    #/providers/Microsoft.Management/managementGroups/LAZ-VCF-UY2fQ/providers/Microsoft.Authorization/policyDefinitions/vcf-allowed-locations
    #policy_definition_id = "/providers/Microsoft.Management/managementGroups/${data.azurerm_management_group.LAZ-VCF.name}/providers/Microsoft.Authorization/policyDefinitions/vcf-allowed-locations"
    policy_definition_id = azurerm_policy_definition.vcfallowedlocations_MGMT_GROUP_VCF.id

    parameter_values = <<VALUE
    {
      "listOfAllowedLocations": {"value": ["westeurope"]}
    }
    VALUE
  }
}

