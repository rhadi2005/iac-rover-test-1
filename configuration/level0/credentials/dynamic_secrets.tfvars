
# Store output attributes into keyvault secret
# Those values are used by the rover to connect the current remote state and
# identity the lower level
dynamic_keyvault_secrets = {
  cred_ea_account_owner = { # ea account owner
    account_owner_username = {
      secret_name = "account-owner-username"
      value       = ""
    }
    account_owner_password = {
      secret_name = "account-owner-password"
      value       = ""
    }
    tenant_id = {
      secret_name = "tenant-id"
      value       = "482c21b6-ee9f-4d24-9bf0-6c9258fc2003" # rasboracafe.onmicrosoft.com Tenant
    }
  }

}