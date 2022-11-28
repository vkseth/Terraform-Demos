data "aws_s3_bucket" "selected" {
  bucket = "bucketnamehere"
}

output "bucket" {
  value = data.aws_s3_bucket.selected
}
