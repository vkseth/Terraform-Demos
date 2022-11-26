terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "terraform-state-26120908"
    key    = "terraform-state-new/" #create folder first inside the s3 bucket
    region = "ap-south-1"
  }
}
