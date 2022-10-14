
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "rha-launchpad"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "30677b6f-9ce1-45d2-a213-a97297916740"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "c2f46589-aa70-4313-84a8-208cfbbcc85c"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "bfa1f1a3-76c6-4171-a185-7c535fd6bcf5"
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
      caf_environment = "rha-launchpad"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "30677b6f-9ce1-45d2-a213-a97297916740"
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
        object_id          = "c2f46589-aa70-4313-84a8-208cfbbcc85c"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "bfa1f1a3-76c6-4171-a185-7c535fd6bcf5"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
