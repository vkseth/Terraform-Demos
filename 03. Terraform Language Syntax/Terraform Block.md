# Terraform block 

- Terraform block is used for setting the version of the terraform we want. 
- It may also contain required_providers block inside which specifies the versions of the providers 
- Terraform block is often put into a separate file called terraform.tf as a way to separate settings into their own file.

Here is an example of a terraform block:

```

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.0"
    }
  }
  required_version = ">= 1.0.1"
}

```