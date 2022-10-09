virtual_hub_route_tables = {
  egress_internet = {
    name = "egress-internet"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_prod"
      key    = "prod"
    }
    routes = {
      egress_internet = {
        name              = "egress-internet"
        destinations_type = "CIDR"
        destinations = [
          "0.0.0.0/0"
        ]
        next_hop = {
          lz_key        = "connectivity_secure_firewalls_prod"
          resource_type = "azurerm_firewalls"
          key           = "fw_secure_prod"
        }
      }
    }
  }
}