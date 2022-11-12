
# azure policy assignment using terraform azurerm

  -var-folder /tf/caf/configuration/level1/alz/rha-azurerm \


rover \
  -lz /tf/caf/configuration/level1/alz/rha-azurerm \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate alz_rha_azurerm.tfstate \
  -env rha-launchpad \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_rha_azurerm.tfplan \
  -a plan
