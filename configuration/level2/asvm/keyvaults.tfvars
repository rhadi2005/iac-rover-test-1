
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "vcf_launchpad"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "bf805fd3-6be9-4f9b-b27e-bacca2efd6d0"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "a99b48a8-685d-4674-ac72-28e16f63299b"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "f17f8352-7ad1-45c9-89ad-da64cec137d0"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "vcf_launchpad"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "bf805fd3-6be9-4f9b-b27e-bacca2efd6d0"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "a99b48a8-685d-4674-ac72-28e16f63299b"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "f17f8352-7ad1-45c9-89ad-da64cec137d0"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
