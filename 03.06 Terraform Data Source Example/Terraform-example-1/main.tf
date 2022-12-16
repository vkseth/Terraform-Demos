data "aws_region" "current" {}

output "region" {
  value = data.aws_region.current.id
}



#output will show sensitive value
