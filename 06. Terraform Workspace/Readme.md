

# Terraform Workspace 

Help in env. isolation 

when all your configuration store in single file it might break something 

For example, while trying to deploy a new version of your app in staging, you might break the app in production.

Terraform workspace help in having separate environments so that they are isolated from one another

```
dev
stage
prod
uat
pat

```

Terraform workspace help in 

Isolation via workspaces

Isolation via file layout




# Isolation via Workspaces

Terraform workspaces allow you to store your Terraform state in multiple, separate, named workspaces



# Follow Example 
 
__check in which workspace__ 

terraform workspace show  # to list all the terraform workspace 

__create new workspace__

terraform workspace new dev

__check in which workspace__ 

terraform workspace show 

__switch between workspace__ 

terraform workspace new dev

```

Here Terraform create a totally new EC2 Instance from scratch! That’s because the state files in each workspace are isolated from one another, and because you’re now in the new workspace, Terraform isn’t using the state file from the default workspace and therefore doesn’t see the EC2 Instance was already created there.

```

Note - if state file is remotely store than terraform workspace list will only show default 

Workaround 

terraform workspace new dev
terraform workspace new prod

Workspace will also create one env:/ in s3 bucket ( if remote backend selected )

