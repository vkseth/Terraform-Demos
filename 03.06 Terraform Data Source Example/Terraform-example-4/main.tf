data "aws_s3_bucket" "selected" {
  bucket = "automation-sep"
}

output "bucket" {
  value = data.aws_s3_bucket.selected
}
