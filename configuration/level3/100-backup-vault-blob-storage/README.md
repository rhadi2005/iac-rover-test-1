rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/100-backup-vault-blob-storage \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -target_subscription 52f4e128-3d23-4567-8900-a5c308f2284d \
  -tfstate rha-100blob.tfstate \
  -env rha-launchpad \
  -level level0 \
  -p ${TF_DATA_DIR}/rha-100blob.tfplan \
  -a plan