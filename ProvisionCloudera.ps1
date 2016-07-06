

# Note: Because the $ErrorActionPreference is "Stop", this script will stop on first failure.
$ErrorActionPreference = "stop"

Login-AzureRmAccount
$subscription = Get-AzureRmSubscription | Out-GridView -Title "Select a Subscription" -PassThru
Select-AzureRmSubscription -SubscriptionId $subscription.SubscriptionId
$ResourceGroupName = (Get-AzureRmResourceGroup).ResourceGroupName | Out-GridView -Title "Select a Resource Group" -PassThru


New-AzureRmResourceGroupDeployment -Name ClouderaDeployment -ResourceGroupName $ResourceGroupName -TemplateFile .\azuredeploy.json -TemplateParameterFile .\azuredeploy.parameters.json -Verbose