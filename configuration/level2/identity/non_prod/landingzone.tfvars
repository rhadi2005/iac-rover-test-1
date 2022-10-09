landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "identity_level2_non_prod"
  global_settings_key = "identity"
  tfstates = {
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
