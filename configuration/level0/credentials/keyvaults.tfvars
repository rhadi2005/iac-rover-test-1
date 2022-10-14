keyvaults = {
  "cred_ea_account_owner" = {
    name                     = "eaowner"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = false
    tags = {
      caf_environment      = "rha-launchpad"
      caf_identity_aad_key = "cred_ea_account_owner"
    }
    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
  "cred_level0" = {
    name                     = "idl0"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = false
    tags = {
      caf_environment      = "rha-launchpad"
      caf_identity_aad_key = "cred_level0"
    }
    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      level0 = {
        lz_key             = "launchpad"
        azuread_group_key  = "level0"
        secret_permissions = ["Get"]
      }
    }
  }
  "cred_identity" = {
    name                     = "id"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = false
    tags = {
      caf_environment      = "rha-launchpad"
      caf_identity_aad_key = "cred_identity"
    }
    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
  "cred_management" = {
    name                     = "mg"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = false
    tags = {
      caf_environment      = "rha-launchpad"
      caf_identity_aad_key = "cred_management"
    }
    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      management_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "management"
        secret_permissions = ["Get"]
      }
    }
  }
  "cred_alz" = {
    name                     = "es"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = false
    tags = {
      caf_environment      = "rha-launchpad"
      caf_identity_aad_key = "cred_alz"
    }
    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      alz_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "alz"
        secret_permissions = ["Get"]
      }
    }
  }
  "cred_connectivity" = {
    name                     = "co"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = false
    tags = {
      caf_environment      = "rha-launchpad"
      caf_identity_aad_key = "cred_connectivity"
    }
    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      connectivity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "connectivity"
        secret_permissions = ["Get"]
      }
    }
  }
  "cred_subscription_creation_platform" = {
    name                     = "scp"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = false
    tags = {
      caf_environment      = "rha-launchpad"
      caf_identity_aad_key = "cred_subscription_creation_platform"
    }
    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      subscription_creation_platform_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "subscription_creation_platform"
        secret_permissions = ["Get"]
      }
    }
  }
  "cred_subscription_creation_landingzones" = {
    name                     = "scl"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = false
    tags = {
      caf_environment      = "rha-launchpad"
      caf_identity_aad_key = "cred_subscription_creation_landingzones"
    }
    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      subscription_creation_platform_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "subscription_creation_landingzones"
        secret_permissions = ["Get"]
      }
    }
  }
  "cred_gitops" = {
    name                     = "gitops"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = false
    tags = {
      caf_environment      = "rha-launchpad"
      caf_identity_aad_key = "cred_gitops"
    }
    creation_policies = {
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
}
