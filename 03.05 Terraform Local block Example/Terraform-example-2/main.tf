locals {
  common_tags = {
    Envoirnment    = "Dev"
    Project        = "Cookie"
    SecurityID     = "1A"
    TaggingVersion = "V2.3"
    Owner          = "DevopsTeam"
  }
}


resource "aws_instance" "web" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  key_name      = "centos-eks"
  tags = merge(
    local.common_tags,
    tomap({
      "Name" = "ec2machinedev"
    })
  )
}
