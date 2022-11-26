# What is Terraform state?


Every time you run Terraform, it records information about what infrastructure it created in a Terraform state file in the same working directory 


# Work perform by state file?

Every time you run Terraform, it can fetch the latest status of resource from AWS and compare that to what’s in your Terraform configurations to determine what changes need to be applied.


In other words, the output of the plan command is a diff between the code on your computer and the infrastructure deployed in the real world.

__Never Ever edit the Terraform state files by hand or write code that reads them directly.__

always use terraform state command

```

terraform state
terraform state show 

```

# Remove resource from state file 

```

terraform state
terraform state list 
terraform state rm 

#folow example-1

```

# Storging terraform.tfstate locally vs Remotely 

Storing terraform state locally recommended when working for a personal project, 

But if you want to use Terraform as a team on a real product, storing terraform state locally not recommended.


## Working in Team require ##

__Shared location__

able to access the same Terraform state files. 
That means you need to store state files in a shared location.

__Locking state files__

If all the team member use the same terraform state file it need some mechanisum to lock multiple changes 

__Isolating state files__

for different env. 


## Storing terraform state in version control  ## 

Storing Terraform state in version control is a bad idea for the following reasons:

- Manual error
- Locking
- Secrets


Instead of using version control, the best way to manage shared storage for state files is to use Terraform’s built-in support for remote backends

Remote backends solved all the above issue 

Follow Example-2
