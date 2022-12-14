
## Terraform Import ## 

Terraform import can help to import existing infrastructure resources. 
Terraform import help you to bring existing resources under Terraform management.

Important 

Terraform import can only import resources into the state file. 
Terraform Importing does not generate configuration file, need to write it manually


Before you run terraform import you must manually write a resource configuration block for the resource.


__Import existing IAM user__

go to https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user
and look for terraform import 

terraform import aws_iam_user.lb <exiting username here>


mkdir terraform-import
cd terraform-import
nano iam.tf

resource "aws_iam_user" "lb" {}


terraform init

terraform import aws_iam_user.lb jenkins

aws_iam_user.lb: Importing from ID "jenkins"...
aws_iam_user.lb: Import prepared!
  Prepared aws_iam_user for import
aws_iam_user.lb: Refreshing state... [id=jenkins]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.


__Verify__

terraform state list 

__update configration in iam.tf file__

terraform state show aws_iam_user.lb

__Testing__

make some changes from the aws console like adding tag 
run terraform plan 
here it will show the changes 

