# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t rasboracafe.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.1

rover \
  --impersonate-sp-from-keyvault-url https://vcf-kv-idl0-nbl.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id a9c7991e-521c-4532-93a9-5a37f82ccaed \
  -target_subscription a9c7991e-521c-4532-93a9-5a37f82ccaed \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env vcf_launchpad \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

