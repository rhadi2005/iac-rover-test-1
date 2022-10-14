# Enterprise scale

## Deploy Enterprise Scale

Note you need to adjust the branch to deploy Enterprise Scale to 2203.0

```bash
az account clear
# login a with a user member of the caf-platform-maintainers group
rover login -t ocbps.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  --impersonate-sp-from-keyvault-url https://rha-kv-es-kfa.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/configuration/level1/alz/rha \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate alz_rha.tfstate \
  -env rha-launchpad \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_rha.tfstate.tfplan \
  -a plan

rover \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/configuration/level1/alz/rha \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate alz_rha.tfstate \
  -env rha-launchpad \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_rha.tfstate.tfplan \
  -a plan

```

# Next steps

[Deploy asvm](../../level2/asvm/readme.md)
[Deploy Connectivity](../../level2/connectivity/virtual_wans/readme.md)
