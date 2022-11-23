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
