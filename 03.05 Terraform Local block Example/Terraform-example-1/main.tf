
resource "aws_s3_bucket" "default" {
  bucket = "${local.name-prefix}-bucket"
  acl    = "private"

  tags = {
    Name = "${local.name-prefix}-bucket"
  }
}
