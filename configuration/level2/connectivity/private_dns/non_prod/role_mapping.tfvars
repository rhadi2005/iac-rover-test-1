role_mapping = {
  custom_role_mapping = {
    resource_groups = {
      "dns_connectivity_non_prod" = {
        "landgingzone_extended" = {
          azuread_groups = {
            lz_key = "identity_level2_non_prod"
            keys   = ["caf_non_prod_landingzones_dns_contributors"]
          }
        }
      }
    }
  }
  built_in_role_mapping = {
    resource_groups = {
      "dns_connectivity_non_prod" = {
        "Private DNS Zone Contributor" = {
          azuread_groups = {
            lz_key = "identity_level2_non_prod"
            keys   = ["caf_non_prod_landingzones_dns_contributors"]
          }
        }
      }
    }
  }
}
