# What is Terraform state?


- Every time you run Terraform, it records information about what infrastructure it created in a Terraform state file in the same working directory 


# Work perform by state file?

- Every time you run Terraform, it can fetch the latest status of resource from AWS and compare that to what’s in your Terraform configurations to determine what changes need to be applied.


- In other words, the output of the plan command is a diff between the code on your computer and the infrastructure deployed in the real world.

** Never Ever edit the Terraform state files by hand or write code that reads them directly.

use terraform state commands 

terraform state
terraform state show 

# Remove resource from state file 

- terraform state

- terraform state list 

- terraform state rm 

#folow example-1


# Storging terraform.tfstate locally vs Remotely 

Terraform for a personal project, storing terraform state locally recommended.

But if you want to use Terraform as a team on a real product storing terraform state locally not recommended.



- To be able to use Terraform to update your infrastructure, each of your team members needs access to the same Terraform state files. 
That means you need to store those files in a shared location.

- Locking state files
If all the team member use the same terraform state file it need some mechanisum to lock multiple changes 

- Isolating state files 
for different env. 

