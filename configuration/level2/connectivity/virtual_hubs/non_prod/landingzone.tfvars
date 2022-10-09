landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_virtual_hubs_non_prod"
  global_settings_key = "connectivity_virtual_wans_prod"
  tfstates = {
    connectivity_virtual_wans_prod = {
      tfstate   = "connectivity_virtual_wans_prod.tfstate"
      workspace = "tfstate"
    }
  }
}
custom_variables = {
  virtual_hub_lz_key = "connectivity_virtual_hubs_non_prod"
}
