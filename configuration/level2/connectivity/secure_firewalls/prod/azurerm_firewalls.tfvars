azurerm_firewalls = {
  fw_secure_prod = {
    name               = "fw-secure-prod"
    resource_group_key = "firewall"
    sku_tier           = "Standard"
    sku_name           = "AZFW_Hub"
    firewall_policy = {
      key    = "secure_root"
      lz_key = "connectivity_firewall_policies_prod"
    }
    zones = [1, 2, 3]

    virtual_hub = {
      prod = {
        lz_key          = "connectivity_virtual_hubs_prod"
        virtual_hub_key = "prod"
      }
    }
  }
}
