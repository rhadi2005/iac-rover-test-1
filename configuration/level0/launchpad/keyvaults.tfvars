
keyvaults = {

  level0 = {
    name               = "lvl0"
    resource_group_key = "level0"
    sku_name           = "standard" #premium
    tags = {
      caf_tfstate     = "level0"
      caf_environment = "rha-launchpad"
    }

    creation_policies = {
      // rahmat.hadi@ocbps.onmicrosoft.com
      bootstrap_user = {
        object_id          = null
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_contributors = {
        azuread_group_key  = "caf_platform_contributors"
        secret_permissions = ["Get"]
      }
    }

  }

  level1 = {
    name               = "lvl1"
    resource_group_key = "level1"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level1"
      caf_environment = "rha-launchpad"
    }

    creation_policies = {
      // rahmat.hadi@ocbps.onmicrosoft.com
      bootstrap_user = {
        object_id          = null
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_contributors = {
        azuread_group_key  = "caf_platform_contributors"
        secret_permissions = ["Get"]
      }
    }

  }

  level2 = {
    name               = "lvl2"
    resource_group_key = "level2"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level2"
      caf_environment = "rha-launchpad"
    }

    creation_policies = {
      // rahmat.hadi@ocbps.onmicrosoft.com
      bootstrap_user = {
        object_id          = null
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_contributors = {
        azuread_group_key  = "caf_platform_contributors"
        secret_permissions = ["Get"]
      }
    }
  }

  level3 = {
    name               = "lvl3"
    resource_group_key = "level3"
    sku_name           = "premium"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "rha-launchpad"
    }

    creation_policies = {
      // rahmat.hadi@ocbps.onmicrosoft.com
      bootstrap_user = {
        object_id          = null
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_contributors = {
        azuread_group_key  = "caf_platform_contributors"
        secret_permissions = ["Get"]
      }
    }
  }

  level4 = {
    name               = "lvl4"
    resource_group_key = "level4"
    sku_name           = "premium"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "rha-launchpad"
    }

    creation_policies = {
      // rahmat.hadi@ocbps.onmicrosoft.com
      bootstrap_user = {
        object_id          = null
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_contributors = {
        azuread_group_key  = "caf_platform_contributors"
        secret_permissions = ["Get"]
      }
    }
  }

}
