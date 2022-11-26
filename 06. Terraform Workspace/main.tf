resource "aws_instance" "web" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"
  key_name      = "centos-eks"
  tags = {
    Name = "Demo-Machine"
  }
}

