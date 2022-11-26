variable "key_name" {}

variable "instance_type_list" {
  description = "EC2 Instnace Type"
  type        = list(string)
  default     = ["t3.micro", "t3.small"]
}
