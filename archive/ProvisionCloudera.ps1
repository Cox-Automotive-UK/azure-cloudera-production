Param(
    # Azure subscription ID associated with the Dev/Test lab instance.
    [ValidateNotNullOrEmpty()]
    [string]
    $SubscriptionId,

    #Name for the new resource group where the lab will be created 
    [ValidateNotNullOrEmpty()]
    [string]
    $ResourceGroupName,

    #Location for the resource group to be created. e.g. West US 
    [ValidateNotNullOrEmpty()]
    [string]
    $ResourceGroupLocation
)

##################################################################################################

#
# Powershell Configurations
#

# Note: Because the $ErrorActionPreference is "Stop", this script will stop on first failure.
$ErrorActionPreference = "stop"

"Login to the subscription with your Azure account..."
#Login-AzureRmAccount -SubscriptionId $SubscriptionId
#TODO: Use the line below instead of Login above, once you're authenticated.
Select-AzureRmSubscription -SubscriptionId $SubscriptionId | Out-Null

"Creating new resource group for the Cloudera Deployment..."
New-AzureRmResourceGroup -Name $ResourceGroupName -Location $resourceGroupLocation

"Start deploying the Cloudera infrastructure using the ARM templates..."
New-AzureRmResourceGroupDeployment -Name ClouderaDeployment -ResourceGroupName $ResourceGroupName -TemplateFile .\azuredeploy.json -TemplateParameterFile .\azuredeploy.parameters.json -Verbose