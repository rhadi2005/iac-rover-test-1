landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_secure_firewalls_prod"
  global_settings_key = "connectivity_virtual_hubs_prod"
  tfstates = {
    connectivity_virtual_hubs_prod = {
      tfstate   = "connectivity_virtual_hubs_prod.tfstate"
      workspace = "tfstate"
    }
    connectivity_firewall_policies_prod = {
      tfstate   = "connectivity_firewall_policies_prod.tfstate"
      workspace = "tfstate"
    }
  }
}
