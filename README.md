# terraform-diff-prometheus
Prometheus provider that expose stats about terraform plan result 

## Configuration
You need to set following variables:

* `DEPLOY_KEY`: Github deploy key to access to repository that contains staks declarations
* `GITHUB_REPOSITORY`: Github repository without protocol or extension ex: `camptocamp/terraform-diff-prometheus`
* `AWS_ACCESS_KEY`: Amazon access key to S3 bucket that contains terraform state file
* `AWS_SECRET_KEY`: Amazon secret key to S3 bucket
* `AWS_REGION`: Amazon region where bucket is stored
* `RANCHER_ACCESS_KEY`: Access key part of Rancher API key 
* `RANCHER_SECRET_KEY`: Secret key part of Rancher API key
* `RANCHER_URL`: URL to rancher API
* `RANCHER_ENV`: Rancher environment identifier (Should be `1a5`)
* `PROJECT`: Project name, this should match the folder name in github repository: `$GITHUB_REPOSITORY/rancher-environments/$PROJECT`

## Provider

Provider image will push an `index.html` to webserver image, this file will be available on port 8080 in 
`/metrics/` folder. This file contains one metrics : `terraform_plan_diff_count` followed by diff count 
found in specified rancher env.

You should define following label in order to link with prometheus : 

	`prometheus_port: 8080`
