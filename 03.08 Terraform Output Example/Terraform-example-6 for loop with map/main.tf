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
  value = { for instance in aws_instance.web : instance.id => instance.public_dns }
}


# in the map we need to provide value in key value pair 
#so here instance.id is key 
#instance.public.dns is value 


# advance level 

output "instance2" {
  value = { for c, instance in aws_instance.web : c => instance.public_dns }
}
