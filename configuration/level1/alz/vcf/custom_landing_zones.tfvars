custom_landing_zones = {
  vcf-corp = {
    display_name               = "Corp"
    parent_management_group_id = "vcf-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_corp"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  vcf-online = {
    display_name               = "Online"
    parent_management_group_id = "vcf-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_online"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  vcf-corp-prod = {
    display_name               = "Production"
    parent_management_group_id = "vcf-corp"
    archetype_config = {
      archetype_id   = "landingzone_prod"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  vcf-corp-non-prod = {
    display_name               = "Non Production"
    parent_management_group_id = "vcf-corp"
    archetype_config = {
      archetype_id   = "landingzone_non_prod"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  vcf-online-web = {
    display_name               = "Non Production"
    parent_management_group_id = "vcf-online"
    archetype_config = {
      archetype_id   = "landingzone_online_web"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

}