variable "availability_zone" {
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]

}

variable "instance_type_map" {
  description = "EC2 Instnace Type"
  type        = map(string)
  default = {
    "dev"  = "t3.micro"
    "qa"   = "t3.small"
    "prod" = "t3.large"
  }
}
