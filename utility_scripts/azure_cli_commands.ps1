

az login
# set default localisation for new resources
az --defaults location=francecentral

# install the az ml extension in case of ml is not in the 'az' command group error
# DO NOT INSTALL deprecated v1 ml az extension add -n azure-cli-ml
az extension add -n ml -y #v2

# set default subcription for new resources
az account set -s d008c1e7-57ab-4d3d-94f1-305bc8cc0faa

# create a new resource group
    # we don't pass the --location and --subscription arguments because they have been defaulted earlier
az group create --name AzureMLOpsProjectGroup

MyRGName = AzureMLOpsProjectGroup
MyWSName = MLProjectWS

az ml workspace create -n "MLProjectWS" -g "AzureMLOpsProjectGroup" -l "francecentral"