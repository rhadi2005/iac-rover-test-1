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
    name            = "Subscription for OCB Professional Services"
    create_alias    = false
    subscription_id = "52f4e128-3d23-4567-8900-a5c308f2284d"
  }
  identity = {
    name            = "Subscription for OCB Professional Services"
    create_alias    = false
    subscription_id = "52f4e128-3d23-4567-8900-a5c308f2284d"
  }
  connectivity = {
    name            = "Subscription for OCB Professional Services"
    create_alias    = false
    subscription_id = "52f4e128-3d23-4567-8900-a5c308f2284d"
  }
  management = {
    name            = "Subscription for OCB Professional Services"
    create_alias    = false
    subscription_id = "52f4e128-3d23-4567-8900-a5c308f2284d"
  }
}