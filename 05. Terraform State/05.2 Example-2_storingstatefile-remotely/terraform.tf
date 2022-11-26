#this need to create after bucket created.
#limitation variables not working in terraform so need to create s3 bucket and folder inside bucket first
#for example 

/*
terraform {
  backend "s3" {
    bucket         = var.bucket
    region         = var.region
    dynamodb_table = var.dynamodb_table
    key            = "example/terraform.tfstate"
    encrypt        = true
  }
}
*/

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "terraform-state-26120908"
    key    = "terraform-state/" #create folder first inside the s3 bucket
    region = "ap-south-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}


