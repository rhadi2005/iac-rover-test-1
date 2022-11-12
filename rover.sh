#!/bin/bash

# Initialize the launchpad first with rover
# deploy a landingzone with
# rover -lz [landingzone_folder_name] -a [plan | apply | destroy] [parameters]


export script_path=$(dirname "$BASH_SOURCE")

source ${script_path}/lib/logger.sh
source ${script_path}/clone.sh
source ${script_path}/walkthrough.sh
source ${script_path}/tfstate.sh
source ${script_path}/remote.sh
source ${script_path}/functions.sh
source ${script_path}/parse_command.sh
source ${script_path}/lib/bootstrap.sh

export TF_VAR_rover_version=$(get_rover_version)
source ${script_path}/banner.sh

# symphony
source ${script_path}/ci.sh
source ${script_path}/cd.sh
source ${script_path}/symphony_yaml.sh
source ${script_path}/test_runner.sh

export ROVER_RUNNER=${ROVER_RUNNER:=false}

export TF_VAR_workspace=${TF_VAR_workspace:="tfstate"}
export TF_VAR_environment=${TF_VAR_environment:="sandpit"}
export TF_VAR_level=${TF_VAR_level:="level0"}
export TF_CACHE_FOLDER=${TF_DATA_DIR:=$(echo ~)}
export ARM_SNAPSHOT=${ARM_SNAPSHOT:="true"}
export ARM_USE_AZUREAD=${ARM_USE_AZUREAD:="true"}
export ARM_STORAGE_USE_AZUREAD=${ARM_STORAGE_USE_AZUREAD:="true"}
export ARM_USE_MSAL=${ARM_USE_MSAL:="false"}
export skip_permission_check=${skip_permission_check:=false}
export symphony_run_all_tasks=true
export debug_mode=${debug_mode:="false"}
export devops=${devops:="false"}
export log_folder_path=${log_folderpath:=~/.terraform.logs}
export TF_IN_AUTOMATION="true" #Overriden in logger if log-severity is passed in.
export TF_VAR_tf_cloud_organization=${TF_CLOUD_ORGANIZATION}
export TF_VAR_tf_cloud_hostname=${TF_CLOUD_HOSTNAME:="app.terraform.io"}
export REMOTE_credential_path_json=${REMOTE_credential_path_json:="$(echo ~)/.terraform.d/credentials.tfrc.json"}
export gitops_terraform_backend_type=${TF_VAR_backend_type:="azurerm"}
export gitops_agent_pool_type=${GITOPS_AGENT_POOL_TYPE:="github"}
export gitops_agent_pool_name=${GITOPS_AGENT_POOL_NAME}
export gitops_execution_mode="local"
export gitops_number_runners=1
export backend_type_hybrid=${BACKEND_type_hybrid:=true}
export gitops_agent_pool_execution_mode=local


unset PARAMS

current_path=$(pwd)

mkdir -p ${TF_PLUGIN_CACHE_DIR}
__log_init__
set_log_severity ERROR # Default Log Severity. This can be overriden via -log-severity or -d (shortcut for -log-severity DEBUG)

while (( "$#" )); do
    case "${1}" in
        --walkthrough)
            export caf_command="walkthrough"
            shift 1
            ;;
        --clone|--clone-branch|--clone-folder|--clone-destination|--clone-folder-strip)
            export caf_command="clone"
            process_clone_parameter $@
            shift 2
            ;;
        -lz|--landingzone)
            export caf_command="landingzone"
            export landingzone_name=$(parameter_value --landingzone ${2})
            export TF_VAR_tf_name=${TF_VAR_tf_name:="$(basename ${landingzone_name}).tfstate"}
            shift 2
            ;;
        -lp|--log-path)
            export log_folder_path=${2}
            shift 2
            ;;
        -c|--cloud)
            export cloud_name=$(parameter_value --cloud ${2})
            shift 2
            ;;
        -d|--debug)
            export debug_mode="true"
            set_log_severity DEBUG
            shift 1
            ;;
        -log-severity)
            set_log_severity $2
            shift 2
            ;;
        -stack)
           export stack_name=${2}
           shift 2
           ;;
        -a|--action)
            export tf_action=$(parameter_value --action "${2}")
            shift 2
            ;;
       -id)
            export tf_res_id=${2}
	    shift 2
            ;;
        --clone-launchpad)
            export caf_command="clone"
            export landingzone_branch=${landingzone_branch:="master"}
            export clone_launchpad="true"
            export clone_landingzone="false"
            echo "cloning launchpad"
            shift 1
            ;;
        workspace)
            shift 1
            export caf_command="workspace"
            ;;
        landingzone)
            shift 1
            export caf_command="landingzone_mgmt"
            ;;
        login)
            shift 1
            export caf_command="login"
            ;;
        validate | ci)
            shift 1
            export caf_command="ci"
            export devops="true"
            ;;
        ignite)
            shift 1
            export caf_command="ignite"
            ;;
        --playbook | -playbook)
            export caf_ignite_playbook=${2}
            shift 2
            ;;
        -e)
            export caf_ignite_environment+="${1} ${2} "
            shift 2
            ;;
        purge)
            purge
            ;;
        deploy | cd)
            export cd_action=${2}
            export TF_VAR_level="all"
            export caf_command="cd"
            export devops="true"
            len=$#
            if [ "$len" == "1" ]; then
              shift 1
            else
              shift 2
            fi

            ;;
        test)
            shift 1
            export caf_command="test"
            export devops="true"
            ;;
        -sc|--symphony-config)
            export symphony_yaml_file=$(parameter_value --symphony-config ${2})
            shift 2
            ;;
        -ct|--ci-task-name)
            export ci_task_name=$(parameter_value --ci-task-name ${2})
            export symphony_run_all_tasks=false
            shift 2
            ;;
        -b|--base-dir)
            export base_directory=$(parameter_value --base-dir ${2})
            shift 2
            ;;
        -tfc|--tfc|-remote|--remote)
            shift 1
            export gitops_terraform_backend_type="remote"
            ;;
        -backend-type-hybrid)
            export backend_type_hybrid=${2}
            shift 2
            ;;
        -remote_organization|-tf_cloud_organization|--remote_organization|--tf_cloud_organization)
            export TF_VAR_tf_cloud_organization="${2}"
            export gitops_terraform_backend_type="remote"
            shift 2
            ;;
        -tf_cloud_hostname|--tf_cloud_hostname|-remote_hotname)
            export TF_VAR_tf_cloud_hostname="${2}"
            export gitops_terraform_backend_type="remote"
            shift 2
            ;;
        -t|--tenant)
            export tenant=$(parameter_value --tenant ${2})
            shift 2
            ;;
        -s|--subscription)
            export subscription=$(parameter_value --subscription ${2})
            shift 2
            ;;
        logout)
            shift 1
            export caf_command="logout"
            ;;
        -tfstate)
                export TF_VAR_tf_name=$(parameter_value -tfstate ${2})
                if [ ${TF_VAR_tf_name##*.} != "tfstate" ]; then
                    echo "tfstate name extension must be .tfstate"
                    exit 50
                fi
                export TF_VAR_tf_plan="${TF_VAR_tf_name%.*}.tfplan"
                shift 2
                ;;
        -env|--environment)
                export TF_VAR_environment=$(parameter_value --environment ${2})
                shift 2
                ;;
        -launchpad)
                export caf_command="launchpad"
                export TF_DATA_DIR=${TF_DATA_DIR:="$(echo ~)/.terraform.cache/launchpad"}
                shift 1
                ;;
        -o|--output)
                tf_output_file=$(parameter_value --output ${2})
                shift 2
                ;;
        -p|--plan)
                tf_plan_file=$(parameter_value '-p or --plan' ${2})
                shift 2
                ;;
        -w|--workspace)
                export TF_VAR_workspace=$(parameter_value '--workspace' ${2})
                shift 2
                ;;
        -l|-level)
                export TF_VAR_level=$(parameter_value '-level' ${2})
                shift 2
                ;;
        -skip-permission-check)
                export skip_permission_check=true
                shift 1
                ;;
        -var-folder)
                expand_tfvars_folder $(parameter_value '-var-folder' ${2})
                export TF_var_folder="${2}"
                var_folder_set=true
                shift 2
                ;;
        -tfstate_subscription_id)
                export TF_VAR_tfstate_subscription_id=$(parameter_value -tfstate_subscription_id ${2})
                shift 2
                ;;
        -target_subscription)
                export target_subscription=$(parameter_value -target_subscription ${2})
                shift 2
                ;;
        --impersonate-sp-from-keyvault-url)
                export sp_keyvault_url=$(parameter_value --impersonate-sp-from-keyvault-url ${2})
                debug "Impersonate from keyvault ${sp_keyvault_url}"
                shift 2
                ;;
        -bootstrap)
                export caf_command="bootstrap"
                shift 1
                ;;
        -bootstrap-scenario-file | -bootstrap-script)
                export bootstrap_script=${2}
                shift 2
                ;;
        -aad-app-name)
                export aad_app_name=${2}
                shift 2
                ;;
        -gitops-terraform-backend-type)
                export gitops_terraform_backend_type=${2}
                shift 2
                ;;
        -gitops-number-runners)
                export gitops_number_runners=${2}
                shift 2
                ;;
        -gitops-pipelines)
                export gitops_pipelines=${2}
                shift 2
                ;;
        -gitops-pipelines-compute)
                export gitops_pipelines_compute=${2}
                shift 2
                ;;
        -gitops-agent-pool-type)
                export gitops_agent_pool_type=${2}
                if [ ${gitops_agent_pool_type} = "tfcloud" ]; then
                    export gitops_execution_mode="agent"
                fi
                shift 2
                ;;
        -gitops-agent-pool-execution-mode)
                export gitops_agent_pool_execution_mode=${2}
                shift 2
                ;;
        -gitops-agent-pool-name)
                export gitops_agent_pool_name=${2}
                shift 2
                ;;
        -gitops-agent-pool-id)
                export gitops_agent_pool_id=${2}
                shift 2
                ;;
        -subscription-deployment-mode)
                export subscription_deployment_mode=${2}
                shift 2
                ;;
        -sub-management)
                export sub_management=${2}
                shift 2
                ;;
        -sub-connectivity)
                export sub_connectivity=${2}
                shift 2
                ;;
        -sub-identity)
                export sub_identity=${2}
                shift 2
                ;;
        -sub-security)
                export sub_security=${2}
                shift 2
                ;;
        -arm_use_oidc)
                export ARM_USE_OIDC=true
                shift 1
                ;;
        *) # preserve positional arguments
                PARAMS+="${1} "
                shift
                ;;
        esac
done

checkout_module
verify_rover_version

set -ETe
trap 'error ${LINENO}' ERR 1 2 3 6

tf_command=$(echo $PARAMS | sed -e 's/^[ \t]*//')

if [ "${caf_command}" == "landingzone" ]; then
    TF_DATA_DIR=$(setup_rover_job "${TF_CACHE_FOLDER}/${TF_VAR_environment}")
elif [ "${caf_command}" == "launchpad" ]; then
    TF_DATA_DIR+="/${TF_VAR_environment}"
fi

verify_azure_session

# Check command and parameters
case "${caf_command}" in
    launchpad|landingzone)
        if [[ ("${tf_action}" != "destroy") && !("${tf_action}" =~  ^state ) && (-z "${tf_command}") ]]; then
            error ${LINENO} "No parameters have been set in ${caf_command}." 1
        fi
        ;;
    *)
        ;;
esac

if [ ! -z "${sp_keyvault_url}" ]; then
    # Impersonate the rover under sp credentials from keyvault
    # created with caf azuread_service_principals object
    login_as_sp_from_keyvault_secrets
fi

process_target_subscription

information ""
information "mode                          : '$(echo ${caf_command})'"

if [ "${caf_command}" != "walkthrough" ]; then
  information "terraform command output file : '$(echo ${tf_output_file})'"
  information "terraform plan output file    : '$(echo ${tf_plan_file})'"
  information "directory cache               : '$(echo ${TF_DATA_DIR})'"
  information "tf_action                     : '$(echo ${tf_action})'"
  information "command and parameters        : '$(echo ${tf_command})'"
  information "resource id                   : '$(echo ${tf_res_id})'"  
  information ""
  information "level (current)               : '$(echo ${TF_VAR_level})'"
  information "environment                   : '$(echo ${TF_VAR_environment})'"
  information "workspace                     : '$(echo ${TF_VAR_workspace})'"
  information "terraform backend type        : '$(echo ${gitops_terraform_backend_type})'"
  information "backend_type_hybrid           : '$(echo ${backend_type_hybrid})'"
  information "tfstate                       : '$(echo ${TF_VAR_tf_name})'"
    if ${backend_type_hybrid} ; then
  information "tfstate subscription id       : '$(echo ${TF_VAR_tfstate_subscription_id})'"
  information "target subscription           : '$(echo ${target_subscription_name})'"
    fi
  information "CI/CD enabled                 : '$(echo ${devops})'"
  information "Symphony Yaml file path       : '$(echo ${symphony_yaml_file})'"
  information "Run all tasks                 : '$(echo ${symphony_run_all_tasks})'"

  if [ ! -z "$TF_LOG" ]; then
    information "TF_LOG                        : '$(echo ${TF_LOG})'"
  fi
  if [ ! -z "$TF_IN_AUTOMATION" ]; then
    information "TF_IN_AUTOMATION              : '$(echo ${TF_IN_AUTOMATION})'"
  fi
fi

if [ $symphony_run_all_tasks == false ]; then
  information "Running task                  : '$(echo ${ci_task_name})'"
fi
information ""


export terraform_version=$(terraform --version | head -1 | cut -d ' ' -f 2)

# set az cli extension context
az config set extension.use_dynamic_install=yes_without_prompt 2>/dev/null

process_actions
clean_up_variables

exit ${RETURN_CODE}
