# Windows Contianers

## Setup Azure

```bash
# login to Azure CLI
az login

# list subscriptions
az account list

# Specify subscription to use
az account set --subscription="SUBSCRIPTION_ID"

# Create service principle
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID"

# {
#   "appId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",            # cient_id
#   "displayName": "azure-cli-2022-09-18-09-36-29",             
#   "password": "prN8Q~XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",     # client_secret
#   "tenant": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"            # tennant_id
# }

# login with service principle
az login --service-principal -u CLIENT_ID -p CLIENT_SECRET --tenant TENANT_ID

# we should be able to list the VM sizes
az vm list-sizes --location westus

# logout
az logout
```

## Configuring the Service Principal in Terraform by storing the credentials as Environment Variables

```bash
export ARM_CLIENT_ID="<APPID_VALUE>"
export ARM_CLIENT_SECRET="<PASSWORD_VALUE>"
export ARM_SUBSCRIPTION_ID="<SUBSCRIPTION_ID>"
export ARM_TENANT_ID="<TENANT_VALUE>"
```

## Terraform commands

```bash
# initialize terraform
terraform init

# format configuration
terraform fmt

# validate the configuration
terraform validate

# apply configuration
terraform apply

# inspect current state
terraform show

# review state file using state commands
terraform state

# list resources in the state
terraform state list

# destroy resources managed by your project
terraform destroy 
```

# Terraform Cloud

```bash
# login to terraform cloud
terraform login

# generate a token and add it to CLI

```