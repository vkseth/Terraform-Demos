data "aws_vpc" "vpc_id" {
  id = var.vpc_id
}
variable "vpc_id" {
  default = "vpc-0a042fbe2928f3bf2"
}

output "vpc_id" {
  value = data.aws_vpc.vpc_id.id
}

data "aws_ssm_parameter" "https" {
  name = "/cfn-registry/https_port"
}

data "aws_ssm_parameter" "mysql" {
  name = "/cfn-registry/mysql_port"
}


output "https" {
  value     = data.aws_ssm_parameter.https.value
  sensitive = true
}

output "mysql" {
  value     = data.aws_ssm_parameter.mysql.value
  sensitive = true
}


###############################
Another example 
##################################

data "aws_ssm_parameter" "https" {
  name = "/cfn-registry/https_port"
}

output "https_port" {
  value = nonsensitive(data.aws_ssm_parameter.https.value)
}
locals {
  name = data.aws_ssm_parameter.https.value
}
output "https" {
  value = nonsensitive(local.name)
}