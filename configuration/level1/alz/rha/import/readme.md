
rover \
  -lz /tf/caf/configuration/level1/alz/rha/import \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate alz_rha.tfstate \
  -env rha-launchpad \
  -level level1 \
  -a import \
  azurerm_management_group.rha-root /providers/Microsoft.Management/managementGroups/rha-root

  
  rover \
  -lz /tf/caf/configuration/level1/alz/rha/import \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate alz_rha.tfstate \
  -env rha-launchpad \
  -level level1 \
  -a 'state list'


rover \
  -lz /tf/caf/configuration/level1/alz/rha/import \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate alz_rha.tfstate \
  -env rha-launchpad \
  -level level1 \
  -a 'state show' \
  azurerm_management_group.rha-root


rover \
  -lz /tf/caf/configuration/level1/alz/rha/import \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate alz_rha.tfstate \
  -env rha-launchpad \
  -level level1 \
  -a 'state show' \
  azurerm_management_group.mymg

rover \
  -lz /tf/caf/configuration/level1/alz/rha/import \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate alz_rha.tfstate \
  -env rha-launchpad \
  -level level1 \
  -a 'state rm' \
  azurerm_management_group.mymg
