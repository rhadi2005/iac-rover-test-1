
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription PAYG Main Subscription with the user rhadi2005@rasboracafe.onmicrosoft.com
rover login -t rasboracafe.onmicrosoft.com -s a9c7991e-521c-4532-93a9-5a37f82ccaed

rover \
  --impersonate-sp-from-keyvault-url https://vcf-kv-scp-ims.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id a9c7991e-521c-4532-93a9-5a37f82ccaed \
  -tfstate platform_subscriptions.tfstate \
  -env vcf_launchpad \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)