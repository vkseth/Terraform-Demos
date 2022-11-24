output "ami" {
  value = aws_instance.myec2vm.ami
}

output "instance_type" {
  value = aws_instance.myec2vm.instance_type
}

output "tags" {
  value = aws_instance.myec2vm.tags
}

output "instance_publicip" {
  value = aws_instance.myec2vm.public_ip
}

output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value       = aws_instance.myec2vm.public_dns
}

output "instance_state" {
  value = aws_instance.myec2vm.instance_state
}
