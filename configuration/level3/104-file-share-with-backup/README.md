rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/104-file-share-with-backup \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -target_subscription 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate rha-104fs.tfstate \
  -env rha-launchpad \
  -level level0 \
  -p ${TF_DATA_DIR}/rha-104fs.tfplan \
  -a plan


rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/104-file-share-with-backup \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -target_subscription 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate rha-104fs.tfstate \
  -env rha-launchpad \
  -level level0 \
  -a apply