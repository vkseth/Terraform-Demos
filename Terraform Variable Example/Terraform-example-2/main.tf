resource "aws_instance" "web" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = "userdata-demo"
    ENV  = "Prod"
  }
}
