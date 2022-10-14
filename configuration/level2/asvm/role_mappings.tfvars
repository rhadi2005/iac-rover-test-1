
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "bfa1f1a3-76c6-4171-a185-7c535fd6bcf5", // caf_platform_maintainers
              "30677b6f-9ce1-45d2-a213-a97297916740"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "bfa1f1a3-76c6-4171-a185-7c535fd6bcf5", // caf_platform_maintainers
              "30677b6f-9ce1-45d2-a213-a97297916740"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "bfa1f1a3-76c6-4171-a185-7c535fd6bcf5", // caf_platform_maintainers
              "30677b6f-9ce1-45d2-a213-a97297916740"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "30677b6f-9ce1-45d2-a213-a97297916740" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "bfa1f1a3-76c6-4171-a185-7c535fd6bcf5", // caf_platform_maintainers
              "30677b6f-9ce1-45d2-a213-a97297916740"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "30677b6f-9ce1-45d2-a213-a97297916740" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
