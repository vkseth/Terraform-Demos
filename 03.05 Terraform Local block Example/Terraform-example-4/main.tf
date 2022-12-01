
resource "aws_s3_bucket" "tagsbucket" {
  bucket = "tags-bucket"
  #acl    = "private"

  tags = local.applied_tags
}

