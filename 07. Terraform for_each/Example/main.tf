data "aws_availability_zones" "zone" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

resource "aws_instance" "web" {
  ami               = "ami-090fa75af13c156b4"
  instance_type     = "t2.micro"
  key_name          = "vicky"
  for_each          = toset(data.aws_availability_zones.zone.names)
  availability_zone = each.key # You can also use each.value because for list items each.key == each.value
  tags = {
    "Name" = "For-Each-Demo-${each.key}"
  }
}

output "ami" {
  value = values(aws_instance.web)[*].ami

}


output "instance_publicip" {
  value = toset([
    for x in aws_instance.web : x.public_ip
  ])
}
