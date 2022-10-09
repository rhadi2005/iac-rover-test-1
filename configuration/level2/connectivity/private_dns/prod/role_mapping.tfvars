role_mapping = {
  custom_role_mapping = {
    resource_groups = {
      "dns_connectivity_prod" = {
        "landgingzone_extended" = {
          azuread_groups = {
            lz_key = "identity_level2_prod"
            keys   = ["caf_prod_landingzones_dns_contributors"]
          }
        }
      }
    }
  }
  built_in_role_mapping = {
    resource_groups = {
      "dns_connectivity_prod" = {
        "Private DNS Zone Contributor" = {
          azuread_groups = {
            lz_key = "identity_level2_prod"
            keys   = ["caf_prod_landingzones_dns_contributors"]
          }
        }
      }
    }
  }
}
