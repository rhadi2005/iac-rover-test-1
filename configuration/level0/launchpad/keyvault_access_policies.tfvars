keyvault_access_policies = {
  level0 = {
    sp_level0 = {
      azuread_group_key  = "level0"
      secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
    }
    identity = {
      azuread_group_key  = "identity"
      secret_permissions = ["Get"]
    }
  }
  level1 = {
    sp_level0 = {
      azuread_group_key  = "level0"
      secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
    }
    identity = {
      azuread_group_key  = "identity"
      secret_permissions = ["Get"]
    }
    management = {
      azuread_group_key  = "management"
      secret_permissions = ["Get"]
    }
    alz = {
      azuread_group_key  = "alz"
      secret_permissions = ["Get"]
    }
    subscription_creation_platform = {
      azuread_group_key  = "subscription_creation_platform"
      secret_permissions = ["Get"]
    }
  }
  level2 = {
    sp_level0 = {
      azuread_group_key  = "level0"
      secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
    }
    identity = {
      azuread_group_key  = "identity"
      secret_permissions = ["Get"]
    }
    management = {
      azuread_group_key  = "management"
      secret_permissions = ["Get"]
    }
    connectivity = {
      azuread_group_key  = "connectivity"
      secret_permissions = ["Get"]
    }
    subscription_creation_platform = {
      azuread_group_key  = "subscription_creation_platform"
      secret_permissions = ["Get"]
    }
  }
}