landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "virtual_hubs_route_tables_prod"
  global_settings_key = "connectivity_virtual_hubs_prod"
  tfstates = {
    connectivity_virtual_hubs_prod = {
      tfstate   = "connectivity_virtual_hubs_prod.tfstate"
      workspace = "tfstate"
    }
    connectivity_secure_firewalls_prod = {
      tfstate   = "connectivity_secure_firewalls_prod.tfstate"
      workspace = "tfstate"
    }
    connectivity_private_dns_firewalls_prod = {
      tfstate   = "connectivity_private_dns_firewalls_prod.tfstate"
      workspace = "tfstate"
    }
  }
}
