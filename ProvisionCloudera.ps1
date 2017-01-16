Login-AzureRmAccount

$subscription = Get-AzureRmSubscription | Out-GridView -Title "Select a Subscription" -PassThru

Select-AzureRmSubscription -SubscriptionId $subscription.SubscriptionId

$ResourceGroupName = (Get-AzureRmResourceGroup).ResourceGroupName | Out-GridView -Title "Select a Resource Group" -PassThru


New-AzureRmResourceGroupDeployment -Name ClouderaProductionDeployment -ResourceGroupName $ResourceGroupName -TemplateFile C:\Users\ukadmin\Documents\GitHub\azure-cloudera-production\azuredeploy.json -TemplateParameterFile C:\Users\ukadmin\Documents\GitHub\azure-cloudera-production\azuredeploy.parameters.json -Verbose