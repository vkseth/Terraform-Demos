
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

resource "aws_instance" "web" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  key_name      = data.aws_instance.foo.key_name
  tags = {
    Name = "userdata-demo"
    ENV  = "Prod"
  }
}

