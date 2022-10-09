landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_private_dns_firewalls_non_prod"
  global_settings_key = "connectivity_virtual_hubs_non_prod"
  tfstates = {
    connectivity_virtual_hubs_non_prod = {
      tfstate   = "connectivity_virtual_hubs_non_prod.tfstate"
      workspace = "tfstate"
    }
    connectivity_firewall_policies_non_prod = {
      tfstate   = "connectivity_firewall_policies_non_prod.tfstate"
      workspace = "tfstate"
    }
  }
}
