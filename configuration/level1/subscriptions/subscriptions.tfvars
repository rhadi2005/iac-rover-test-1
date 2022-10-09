#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {

  launchpad = {
    name            = "PAYG Main Subscription"
    create_alias    = false
    subscription_id = "a9c7991e-521c-4532-93a9-5a37f82ccaed"
  }
  identity = {
    name            = "PAYG Main Subscription"
    create_alias    = false
    subscription_id = "a9c7991e-521c-4532-93a9-5a37f82ccaed"
  }
  connectivity = {
    name            = "PAYG Main Subscription"
    create_alias    = false
    subscription_id = "a9c7991e-521c-4532-93a9-5a37f82ccaed"
  }
  management = {
    name            = "Wingtip Management Subscription"
    create_alias    = false
    subscription_id = "e36f933c-d6f0-4c65-a42e-270e5b267533"
  }
}