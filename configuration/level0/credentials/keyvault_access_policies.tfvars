keyvault_access_policies = {
  cred_ea_account_owner = {
    gitops = {
      azuread_service_principal_key = "gitops"
      secret_permissions            = ["Get"]
    }
  }
  cred_level0 = {
    gitops = {
      azuread_service_principal_key = "gitops"
      secret_permissions            = ["Get"]
    }
  }
  cred_identity = {
    gitops = {
      azuread_service_principal_key = "gitops"
      secret_permissions            = ["Get"]
    }
  }
  cred_management = {
    gitops = {
      azuread_service_principal_key = "gitops"
      secret_permissions            = ["Get"]
    }
  }
  cred_alz = {
    gitops = {
      azuread_service_principal_key = "gitops"
      secret_permissions            = ["Get"]
    }
  }
  cred_connectivity = {
    gitops = {
      azuread_service_principal_key = "gitops"
      secret_permissions            = ["Get"]
    }
  }
  cred_subscription_creation_platform = {
    gitops = {
      azuread_service_principal_key = "gitops"
      secret_permissions            = ["Get"]
    }
  }
  cred_subscription_creation_landingzones = {
    gitops = {
      azuread_service_principal_key = "gitops"
      secret_permissions            = ["Get"]
    }
  }
  cred_gitops = {
    gitops = {
      azuread_service_principal_key = "gitops"
      secret_permissions            = ["Get"]
    }
  }
}