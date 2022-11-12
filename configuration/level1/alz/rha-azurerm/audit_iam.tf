
resource "azurerm_management_group_policy_assignment" "audit_iam" {

  management_group_id  = data.azurerm_management_group.LAZ-VCF.id
  policy_definition_id = azurerm_policy_set_definition.audit_iam.id

  #not_scopes = ["/providers/Microsoft.Management/managementGroups/${data.azurerm_management_group.LEGACY-LAZ-VCF.name}"]
  not_scopes = [data.azurerm_management_group.LEGACY-LAZ-VCF.id]

  name         = "vcf-audit-IAM-assignment"
  description  = "VCF Audit IAM assignment"
  display_name = "VCF Audit IAM assignment"
  enforce      = false

  parameters = null

  #location = "westeurope"
}

/*
resource "azurerm_management_group_policy_assignment" "auditcustomRBACrules" {

  management_group_id  = data.azurerm_management_group.LAZ-VCF.id
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a451c1ef-c6ca-483d-87ed-f49761e3ffb5"

  not_scopes = ["/providers/Microsoft.Management/managementGroups/${data.azurerm_management_group.LEGACY-LAZ-VCF.name}"]

  name         = "auditcustomRBACrules"
  description  = "a completer"
  display_name = "Audit usage of custom RBAC rules"
  enforce      = false

  parameters = null

  #location = "westeurope"
}
*/
