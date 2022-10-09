storage_accounts = {
  level3 = {
    name                      = "l3"
    resource_group_key        = "level3"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "GRS"
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
      caf_environment = "vcf_launchpad"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level3"
    }
  }

  level4 = {
    name                      = "l4"
    resource_group_key        = "level4"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "GRS"
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
    tags = {
      caf_environment = "vcf_launchpad"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level4"
    }
  }

}