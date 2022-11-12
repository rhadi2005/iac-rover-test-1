azuread_groups = {
  caf_platform_maintainers = {
    name                   = "rover-platform-maintainers"
    description            = "High privileged group to run all CAF deployments from vscode. Can be used to bootstrap or troubleshoot deployments."
    owners                 = []
    prevent_duplicate_name = true
  }
  caf_platform_contributors = {
    name                   = "rover-platform-contributors"
    description            = "Can only execute terraform plans for level1 and level2. They can test platform improvements and propose PR."
    owners                 = []
    prevent_duplicate_name = true
  }
  level0 = {
    name = "rover-level0"
    members = {
      azuread_service_principal_keys = ["level0"]
    }
    owners                 = []
    prevent_duplicate_name = true
  }
  alz = {
    name = "rover-alz"
    members = {
      azuread_service_principal_keys = ["alz"]
    }
    owners                 = []
    prevent_duplicate_name = true
  }
  identity = {
    name = "rover-identity"
    members = {
      azuread_service_principal_keys = ["identity"]
    }
    owners                 = []
    prevent_duplicate_name = true
  }
  management = {
    name = "rover-management"
    members = {
      azuread_service_principal_keys = ["management"]
    }
    owners                 = []
    prevent_duplicate_name = true
  }
  connectivity = {
    name = "rover-connectivity"
    members = {
      azuread_service_principal_keys = ["connectivity"]
    }
    owners                 = []
    prevent_duplicate_name = true
  }
  subscription_creation_platform = {
    name = "rover-subscription_creation_platform"
    members = {
      azuread_service_principal_keys = ["subscription_creation_platform"]
    }
    owners                 = []
    prevent_duplicate_name = true
  }
  subscription_creation_landingzones = {
    name = "rover-subscription_creation_landingzones"
    members = {
      azuread_service_principal_keys = ["subscription_creation_landingzones"]
    }
    owners                 = []
    prevent_duplicate_name = true
  }
}
