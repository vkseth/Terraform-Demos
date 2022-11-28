variable "project_name" {
  type = string
}
variable "environment" {
  type = string
}
locals {
  name-prefix = "${var.project_name}-${var.environment}"
}
resource "aws_s3_bucket" "default" {
  bucket = "${local.name-prefix}-bucket"
  acl    = "private"

  tags = {
    Name = "${local.name-prefix}-bucket"
  }
}
