# Deploy the production infrastructure only for a Cloudera Cluster (no Cloudera software)

# DS14 Deployment

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcox-automotive-uk%2Fazure-cloudera-production%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png" />
</a>


<a href="http://armviz.io/#/?load=https://raw.githubusercontent.com%2Fcox-automotive-uk%2Fazure-cloudera-production%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png" />
</a>

You can specify the number of data nodes and master nodes in the azuredeploy.parameters.json file now - all nodes are DS14 due to the complicated way Cloudera/MS wrote the original Template.

This deployment does NOT install Cloudera - just builds the infrastructure the same as the Marketplace image.

Version 2016-07-06
