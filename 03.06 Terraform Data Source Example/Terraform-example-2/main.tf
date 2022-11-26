data "aws_instance" "foo" {
  #instance_id = "i-instanceid"
  filter {
    name   = "tag:Project"
    values = ["Cookie"]
  }
}

output "instance" {
  value = data.aws_instance.foo.key_name
}

