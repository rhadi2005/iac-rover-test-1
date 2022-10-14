
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t ocbps.onmicrosoft.com -s 52f4e128-3d23-4567-8900-a5c308f2284d

rover \
  --impersonate-sp-from-keyvault-url https://rha-kv-id-syx.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -target_subscription 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate identity.tfstate \
  -env rha-launchpad \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -target_subscription 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate identity.tfstate \
  -env rha-launchpad \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
