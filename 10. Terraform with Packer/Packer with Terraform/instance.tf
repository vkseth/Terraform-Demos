resource "aws_instance" "example" {
  ami                    = var.AMI_ID
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0c9d696ffbe712cb4"
  vpc_security_group_ids = ["sg-0ea09531a9ea02e74"]
  key_name               = "centos-eks"
}
