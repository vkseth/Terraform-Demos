Terraform Workflow

Terraform work in 5 stages 

init   validate    plan    apply    destory 


Terraform init - 

first command which we need to use 
It is used to initialize a working directory containing terraform config files 

Download the providers like terraform module, aws provider etc


Terraform validate - 
Validate the terraform config files and ensure they are syntactically valid and internally consistent.


Terraform plan - 
Create an execution plan 
what you are trying to create it will show you with command line 
whatever you are trying to do like create, destroy it will show you in plan phase 


Terraform apply -
It will create the resources which you mention in Terraform config files
By default apply scan the changes for the configration and apply the changes appropriately 
it will also ask for confirmation before  creating  



Terraform destroy - 
Used to destory the terraform managed infrastructure
it will destroy the resouces created by terraorm 

it will also ask for confirmation before deleting 