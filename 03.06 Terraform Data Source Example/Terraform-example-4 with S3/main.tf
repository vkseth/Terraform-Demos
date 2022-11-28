data "aws_s3_bucket" "selected" {
  bucket = "automation-vcky"
}

output "bucket" {
  value = data.aws_s3_bucket.selected
}
