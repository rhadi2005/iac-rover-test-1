vnets = {
  vnet = {
    resource_group_key = "firewall"
    vnet = {
      name          = "vnet-connectivity-prod-fw-plinks"
      address_space = ["10.101.61.0/24"]
    }
    specialsubnets = {
      AzureFirewallSubnet = {
        name = "AzureFirewallSubnet"
        cidr = ["10.101.61.0/24"]
      }
    }
  }
}