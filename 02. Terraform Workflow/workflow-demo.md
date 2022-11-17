# Pre-requisite

    Ensure default-vpc present in respective region
    Need AMI ID
    Configure AWS Credentials -  $HOME/.aws/credentials


Use workflow.tf file 


__Initialize Terraform__


terraform init


__Terraform Validate__


terraform validate


__Terraform Plan__ 


terraform plan


__Terraform Apply__ to Create EC2 Instance


terraform apply 


# Next Step Verify the EC2 Instance in AWS Management Console


__Destroy Infrastructure__


terraform destroy


__Remove files as well__ 


rm -rf .terraform*

rm -rf terraform.tfstate*