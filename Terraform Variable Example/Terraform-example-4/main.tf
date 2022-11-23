resource "aws_instance" "web" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = var.instance_type_map["prod"]
  key_name      = "vicky"
  tags = {
    Name = "userdata-demo"
    ENV  = "Prod"
  }
}
