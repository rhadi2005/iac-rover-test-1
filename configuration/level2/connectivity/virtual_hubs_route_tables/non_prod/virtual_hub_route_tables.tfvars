virtual_hub_route_tables = {
  egress_internet = {
    name = "egress-internet"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    routes = {
      egress_internet = {
        name              = "egress-internet"
        destinations_type = "CIDR"
        destinations = [
          "0.0.0.0/0"
        ]
        next_hop = {
          lz_key        = "connectivity_secure_firewalls_non_prod"
          resource_type = "azurerm_firewalls"
          key           = "fw_secure_non_prod"
        }
      }
    }
  }
}