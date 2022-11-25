resource "aws_instance" "web" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = var.instance_type_map["prod"]
  key_name      = "vicky"
  count         = 2
  tags = {
    Name = "demo-${count.index}"
    ENV  = "Prod"
  }
}

output "instance" {
  value = [for instance in aws_instance.web : instance.instance_type]
}


output "instance1" {
  value = [for x in aws_instance.web : x.security_groups]
}



# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/instance
