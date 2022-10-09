azurerm_firewall_policies = {
  private_links = {
    name   = "private-links-non_prod"
    region = "region1"
    resource_group = {
      key = "firewall"
    }
    dns = {
      proxy_enabled = true
    }
    threat_intelligence_mode = "Alert"
  }
}
