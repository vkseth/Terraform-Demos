# single line comment with # or //
# multiple lines 
/*
....
....
*/


```

/*
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}
*/


```

```

provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-east-1"
}

```


# Resource Block

```

resource "aws_instance" "ec2" {
  ami           = "ami04d29b6f966df1537" // Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}

```


