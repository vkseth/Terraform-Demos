
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "ap-south-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-074dc0a6f6c764218" # Amazon2 Linux AMI ID
}
variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "EC2 Instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "EC2 Instance keyname"
  default     = "centos-eks"
}

variable "tag" {
  description = "EC2 Instance tag"
  default     = "created-from-terraform"
}

variable "security_group_id" {
  description = "EC2 Instance securitygroup"
  default     = "sg-06e84c9dee4bfb3c8"
}

output "sg" {
  value = var.security_group_id
}
