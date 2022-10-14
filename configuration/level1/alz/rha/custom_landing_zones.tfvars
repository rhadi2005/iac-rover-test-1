custom_landing_zones = {

  #data.azurerm_management_group.rha-root

  rha-corp = {
    display_name               = "Corp"
    parent_management_group_id = "not-available"
    archetype_config = {
      archetype_id   = "default_empty"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  rha-online = {
    display_name               = "Online"
    parent_management_group_id = "rha-root"
    archetype_config = {
      archetype_id   = "default_empty"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  rha-corp-prod = {
    display_name               = "Production"
    parent_management_group_id = "rha-corp"
    archetype_config = {
      archetype_id   = "default_empty"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  rha-corp-non-prod = {
    display_name               = "Non Production"
    parent_management_group_id = "rha-corp"
    archetype_config = {
      archetype_id   = "default_empty"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  rha-online-web = {
    display_name               = "Non Production"
    parent_management_group_id = "rha-online"
    archetype_config = {
      archetype_id   = "default_empty"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

}