landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_private_dns_prod"
  global_settings_key = "connectivity_private_dns_firewalls_prod"
  tfstates = {
    connectivity_private_dns_firewalls_prod = {
      tfstate   = "connectivity_private_dns_firewalls_prod.tfstate"
      workspace = "tfstate"
    }
    identity_level2_prod = {
      tfstate   = "identity_level2_prod.tfstate"
      workspace = "tfstate"
    }
  }
}
