resource "aws_instance" "web" {
  ami           = ""
  instance_type = "t3.micro"
  key_name = "vicky.pem"
  security_groups = [ "sg-1", "sg-2" ]

  tags = {
    Name = "HelloWorld"
  }
}








