virtual_hub_connections = {
  vnet_to_hub = {
    name = "vnet-connectivity-non_prod-fw-plinks-TO-vhub-non_prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_non_prod"
      key    = "non_prod"
    }
    vnet = {
      vnet_key = "vnet"
    }
  }
}