
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t ocbps.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://rha-kv-co-mbx.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/azurerm_firewall_policies/non_prod \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -target_subscription 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate connectivity_firewall_policies_non_prod.tfstate \
  -env rha-launchpad \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_firewall_policies_non_prod.tfstate.tfplan \
  -a plan

```

