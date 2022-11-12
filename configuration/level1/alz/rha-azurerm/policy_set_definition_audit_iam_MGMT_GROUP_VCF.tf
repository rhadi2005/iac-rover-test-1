resource "azurerm_policy_set_definition" "audit_iam_MGMT_GROUP_VCF" {

  management_group_id = data.azurerm_management_group.MGMT_GROUP_VCF.id

  name        = "vcf-audit-IAM"
  policy_type = "Custom"

  display_name = "VCF Audit IAM Policy Set"
  description  = "VCF Audit IAM Policy Set"

  parameters = null

  policy_definition_reference {

    #Audit usage of custom RBAC rules
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a451c1ef-c6ca-483d-87ed-f49761e3ffb5"
    parameter_values     = null
  }

  policy_definition_reference {

    #[Deprecated]: Custom subscription owner roles should not exist
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/10ee2ea2-fb4d-45b8-a7e9-a2e770044cd9"
    parameter_values     = null
  }

  policy_definition_reference {

    #Deprecated accounts with owner permissions should be removed from your subscription
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ebb62a0c-3560-49e1-89ed-27e074e9f8ad"
    parameter_values     = null
  }

  policy_definition_reference {

    #MFA should be enabled accounts with write permissions on your subscription
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/9297c21d-2ed6-4474-b48f-163f75654ce3"
    parameter_values     = null
  }

  policy_definition_reference {

    #MFA should be enabled on accounts with owner permissions on your subscription
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/aa633080-8b72-40c4-a2d7-d00c03e80bed"
    parameter_values     = null
  }

  policy_definition_reference {

    #MFA should be enabled on accounts with read permissions on your subscription
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e3576e28-8b17-4677-84c3-db2990658d64"
    parameter_values     = null
  }

  policy_definition_reference {

    #There should be more than one owner assigned to your subscription
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/09024ccc-0c5f-475e-9457-b7c0d9ed487b"
    parameter_values     = null
  }

}
