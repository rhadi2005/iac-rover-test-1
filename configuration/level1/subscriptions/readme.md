
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription Subscription for OCB Professional Services with the user rahmat.hadi@ocbps.onmicrosoft.com
rover login -t ocbps.onmicrosoft.com -s 52f4e128-3d23-4567-8900-a5c308f2284d

rover \
  --impersonate-sp-from-keyvault-url https://rha-kv-scp-kgj.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate platform_subscriptions.tfstate \
  -env rha-launchpad \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)