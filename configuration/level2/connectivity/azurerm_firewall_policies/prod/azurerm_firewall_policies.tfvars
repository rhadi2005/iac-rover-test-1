azurerm_firewall_policies = {
  secure_root = {
    name   = "secure-root-policy-prod"
    region = "region1"
    resource_group = {
      key = "firewall_policies"
    }
    threat_intelligence_mode = "Alert"
  }
}
