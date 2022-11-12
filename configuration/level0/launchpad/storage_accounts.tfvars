storage_accounts = {
  level0 = {
    name                      = "roverlvl0"
    resource_group_key        = "level0"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "LRS"
    blob_properties = {
      versioning_enabled       = true
      last_access_time_enabled = true
      container_delete_retention_policy = {
        days = 7
      }
      delete_retention_policy = {
        days = 7
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    tags = {
      caf_environment = "rha-launchpad"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level0"
    }
  }

  level1 = {
    name                      = "roverlvl1"
    resource_group_key        = "level1"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "LRS"
    blob_properties = {
      versioning_enabled       = true
      last_access_time_enabled = true
      container_delete_retention_policy = {
        days = 7
      }
      delete_retention_policy = {
        days = 7
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    tags = {
      caf_environment = "rha-launchpad"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level1"
    }
  }

  level2 = {
    name                      = "roverlvl2"
    resource_group_key        = "level2"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "LRS"
    blob_properties = {
      versioning_enabled       = true
      last_access_time_enabled = true
      container_delete_retention_policy = {
        days = 7
      }
      delete_retention_policy = {
        days = 7
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    tags = {
      caf_environment = "rha-launchpad"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level2"
    }
  }

  level3 = {
    name                      = "roverlvl3"
    resource_group_key        = "level3"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "LRS"
    blob_properties = {
      versioning_enabled       = true
      last_access_time_enabled = true
      container_delete_retention_policy = {
        days = 7
      }
      delete_retention_policy = {
        days = 7
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    tags = {
      caf_environment = "rha-launchpad"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level3"
    }
  }

  level4 = {
    name                      = "roverlvl4"
    resource_group_key        = "level4"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "LRS"
    blob_properties = {
      versioning_enabled       = true
      last_access_time_enabled = true
      container_delete_retention_policy = {
        days = 7
      }
      delete_retention_policy = {
        days = 7
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    tags = {
      caf_environment = "rha-launchpad"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level4"
    }
  }

}