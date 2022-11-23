variable "key_name" {}


variable "instance_type" {
  description = "EC2 Instnace Type"
  type        = string
  default     = "t2.micro"
}

