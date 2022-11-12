
resource "azurerm_policy_definition" "vcfallowedlocations_MGMT_GROUP_VCF" {
  #/providers/Microsoft.Management/managementGroups/LAZ-VCF-UY2fQ/providers/Microsoft.Authorization/policyDefinitions/vcf-allowed-locations

  name        = "vcf-allowed-locations"
  policy_type = "Custom"
  mode        = "Indexed"

  management_group_id = data.azurerm_management_group.MGMT_GROUP_VCF.id

  display_name = "VCF Limit allowed locations for Resources"
  description  = ""

  metadata = <<METADATA
    {
    "category": "General"
    }

METADATA


  policy_rule = <<POLICY_RULE
    {
      "if": {
        "allOf": [
          {
            "field": "location",
            "notIn": "[parameters('listOfAllowedLocations')]"
          },
          {
            "field": "location",
            "notEquals": "global"
          },
          {
            "field": "type",
            "notEquals": "Microsoft.AzureActiveDirectory/b2cDirectories"
          }
        ]
      },
    "then": {
      "effect": "audit"
    }
  }
POLICY_RULE


  parameters = <<PARAMETERS
    {
    "listOfAllowedLocations": {
      "type": "Array",
      "metadata": {
        "description": "The list of allowed locations for resources.",
        "displayName": "Allowed locations",
        "strongType": "location"
      }
    }
  }
PARAMETERS

}
