rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/102-advanced-postgresql-flexible \
  -p ${TF_DATA_DIR}/rha-102pgsql.tfplan \
  -tfstate rha-102pgsql.tfstate \
  -tfstate_subscription_id 52f4e128-3d23-4567-8900-a5c308f2284d \
  -target_subscription 52f4e128-3d23-4567-8900-a5c308f2284d \
  -env rha-launchpad \
  -level level0 \
  -a plan