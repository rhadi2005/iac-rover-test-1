vnets = {
  vnet = {
    resource_group_key = "firewall"
    vnet = {
      name          = "vnet-connectivity-non_prod-fw-plinks"
      address_space = ["10.101.62.0/24"]
    }
    specialsubnets = {
      AzureFirewallSubnet = {
        name = "AzureFirewallSubnet"
        cidr = ["10.101.62.0/24"]
      }
    }
  }
}