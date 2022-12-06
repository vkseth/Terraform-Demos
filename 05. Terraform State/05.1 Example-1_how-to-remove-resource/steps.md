# Commands 

Terraform init  
Terraform plan 
Terraform apply --auto-approve


__To list all the resouces in the state file__ 

terraform state list 

__To show all the attributes of a resource__

terraform state show <name>

__To show all the content of terraform state file__

terraform state pull

__Terraform state mv command__

Now lets suppose there is one resource 

```

resource "aws_security_group" "terraform-forgot" {
  name        = "terraform-forgot"


```

Now in above file if I need to update the resource name 
resource "aws_security_group" "terraform-forgot"   to   resource "aws_security_group" "terraform-forgot1"

Here terraform will destroy current resource and create new resource 

with help of terraform state mv we can avoid recreating of resource 

terraform state mv aws_security_group.terraform-forgot aws_security_group.terraform-forgot1

verify it with 

terraform state list 


