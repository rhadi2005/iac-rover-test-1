azurerm_firewalls = {
  fw_prod_dns = {
    name               = "fw-prod-dns-01"
    resource_group_key = "firewall"
    vnet_key           = "vnet"
    sku_tier           = "Standard"
    firewall_policy = {
      key = "private_links"
    }
    zones = [1, 2, 3]

    public_ips = {
      ip1 = {
        name          = "pip1"
        public_ip_key = "fw_pip1"
        vnet_key      = "vnet"
        subnet_key    = "AzureFirewallSubnet"
      }
    }
  }
}
