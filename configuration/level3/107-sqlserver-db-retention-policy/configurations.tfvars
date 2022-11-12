global_settings = {
  default_region = "region1"
  regions = {
    region1 = "francecentral"
    region2 = "francesouth"
  }

  prefix        = "rha"
  passthrough   = false
  random_length = 3

  inherit_tags = true
}


tags = {
  Owner          = "RahmatHadi"
  Project        = "CDS-VCF"
  Expiry         = "20231231"
  deploymentType = "rover"
  costCenter     = "CloudExpertServices"
  BusinessUnit   = "Squad Azure"
  DR             = "NON-DR-ENABLED"
}


resource_groups = {
  rg1 = {
    name   = "example-sqldb"
    region = "region1"
  }
}

mssql_servers = {
  mssqlserver1 = {
    name                          = "example-mssqlserver"
    region                        = "region1"
    resource_group_key            = "rg1"
    version                       = "12.0"
    administrator_login           = "sqluseradmin"
    keyvault_key                  = "kv1"
    connection_policy             = "Default"
    public_network_access_enabled = true
  }
}

mssql_databases = {

  mssql_db1 = {
    name               = "exampledb1"
    resource_group_key = "rg1"
    mssql_server_key   = "mssqlserver1"
    license_type       = "LicenseIncluded"
    max_size_gb        = 4
    #sku_name           = "BC_Gen5_2"  # Business Critical, 2 core = 1100€/mois !!!

    short_term_retention_policy = {
      retention_days = 10 # 7 to 35 days
    }

    long_term_retention_policy = {
      weekly_retention  = "P4W" # 1 to 520 in ISO 8601 format
      monthly_retention = "P3M" # 1 to 120 in ISO 8601 format
      yearly_retention  = "P2Y" # 1 to 10 in ISO 8601 format
      week_of_year      = 50    # 1 to 52
    }

  }
}

keyvaults = {
  kv1 = {
    name               = "examplekv"
    resource_group_key = "rg1"
    sku_name           = "standard"

    creation_policies = {
      logged_in_user = {
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge"]
      }
    }
  }
}