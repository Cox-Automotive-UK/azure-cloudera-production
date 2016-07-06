# Deploy the infrastructure only for a Cloudera Cluster (no Cloudera software)

# DS14 Deployment

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fstevebelton%2Ffluffy-lamp%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png" />
</a>

You can specify the number of data nodes and master nodes in the azuredeploy.parameters.json file now - all nodes are DS14 due to the complicated way Cloudera/MS wrote the original Template and lack of time to fix up on my part ;-)

This deployment does NOT install Cloudera - just builds the infrastructure the same as the Marketplace image.

Version 2016-06-21
