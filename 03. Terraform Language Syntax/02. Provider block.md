# Provider blocks


- Provider blocks specifies special type of module that allows Terraform to interact with various cloud-hosting platforms or data centers. 
- Providers must be configured with proper credentials before we can use them. 


```

provider "aws" {
  version = "~> 3.0"
  region = "us-east-1"
}


```