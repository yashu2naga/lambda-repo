#### create an S3 bucket
aws s3 mb s3://my-sam-code-deploy  #my-sam-code-deploy created

## package cloudformation package
aws cloudformation package --s3-bucket my-sam-code-deploy --template-file sam_Template.yml --output-template-file gen/template-generated.yaml
## or we can use SAM
sam package --s3-bucket my-sam-code-deploy --template-file sam_Template.yml --output-template-file gen/template-generated.yaml


##Deploy the tepmlate
aws cloudformation deploy --template-file D:\git-repo\lambda-repo\gen\template-generated.yaml --stack-name hello-world-sam
