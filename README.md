***********| Connect and create new instance |***********

Step 1:
Install aws cli: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
==> include access for IAM user (~/.aws/credentials)

Step2:
Install terraform: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

- Configure IAM: aws configuree

==> Build Infrastructure (include profile with User Name of IAM user): terraform apply (add --auto-apply for auto accept)

- Add variable: -var "key=value"
- Add variable via file: -var-file="filename"
