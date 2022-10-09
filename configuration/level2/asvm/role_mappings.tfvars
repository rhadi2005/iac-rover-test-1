
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
              "f17f8352-7ad1-45c9-89ad-da64cec137d0", // caf_platform_maintainers
              "bf805fd3-6be9-4f9b-b27e-bacca2efd6d0"  // subscription_creation_landingzones
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
              "f17f8352-7ad1-45c9-89ad-da64cec137d0", // caf_platform_maintainers
              "bf805fd3-6be9-4f9b-b27e-bacca2efd6d0"  // subscription_creation_landingzones
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
              "f17f8352-7ad1-45c9-89ad-da64cec137d0", // caf_platform_maintainers
              "bf805fd3-6be9-4f9b-b27e-bacca2efd6d0"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "bf805fd3-6be9-4f9b-b27e-bacca2efd6d0" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "f17f8352-7ad1-45c9-89ad-da64cec137d0", // caf_platform_maintainers
              "bf805fd3-6be9-4f9b-b27e-bacca2efd6d0"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "bf805fd3-6be9-4f9b-b27e-bacca2efd6d0" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
