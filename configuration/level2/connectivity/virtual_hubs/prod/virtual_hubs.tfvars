virtual_hubs = {
  prod = {
    virtual_wan = {
      lz_key = "connectivity_virtual_wans_prod"
      key    = "global_wan"
    }
    resource_group = {
      lz_key = "connectivity_virtual_wans_prod"
      key    = "global_wan"
    }
    hub_name           = "prod"
    region             = "region1"
    hub_address_prefix = "10.101.51.0/24"
    deploy_p2s         = false
    p2s_config = {
      name       = "prod"
      scale_unit = "1"
    }
    deploy_s2s = false
    s2s_config = {
    }
    deploy_er = false
  }
}
