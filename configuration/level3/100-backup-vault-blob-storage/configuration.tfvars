

resource_groups = {
  bv = {
    name   = "bcpvaultblob"
    region = "region1"
  }
}

storage_accounts = {
  bv_st1 = {
    name               = "bv-blob"
    resource_group_key = "bv"
  }
}

backup_vaults = {
  bv0 = {
    backup_vault_name  = "bckp-vault"
    resource_group_key = "bv"
    #datastore_type     = "SnapshotStore" #Proper type of vault for storage blob backup
    datastore_type = "VaultStore"
    redundancy     = "LocallyRedundant"
    region         = "region1"

    #Next block enables System Assigned managed identity
    enable_identity = {
      type = "SystemAssigned"
    }

    lz_key = "rha-104fs"
  }
}

/*
bug fixed in CAF Modules 5.6.2 (à tester 5.5.7)
role_mapping = {
  built_in_role_mapping = {
    storage_accounts = {
      bv_st1 = {
        "Storage Account Backup Contributor" = {
          backup_vaults = {
            keys = ["bv0"]
          }
        }
      }
    }
  }
}
*/
backup_vault_policies = {
  policy0 = {
    type               = "blob_storage" # policy type, blob_storage and disk supported
    backup_vault_key   = "bv0"
    policy_name        = "backup-policy-lvl0"
    retention_duration = "P50D" #Specific ISO 8601 format
  }
}

backup_vault_instances = {
  instance0 = {
    type                    = "blob_storage" # instance type, blob_storage and disk supported
    instance_name           = "instancebkp0"
    region                  = "region1"
    backup_vault_key        = "bv0"
    backup_vault_policy_key = "policy0"
    storage_account_key     = "bv_st1"
  }
}
