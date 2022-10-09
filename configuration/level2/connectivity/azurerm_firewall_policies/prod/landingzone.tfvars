landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_firewall_policies_prod"
  global_settings_key = "connectivity_virtual_wans_prod"
  tfstates = {
    connectivity_virtual_wans_prod = {
      tfstate   = "connectivity_virtual_wans_prod.tfstate"
      workspace = "tfstate"
    }
  }
}
