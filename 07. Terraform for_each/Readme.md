# for each

The for_each expression allows you to loop over sets, and maps to create (a) multiple copies of an entire resource

Lists are not supported when using for_each on a resource


resource "aws_iam_user" "example" {
  for_each = toset(var.user_names)
  name     = each.value
}

variable "user_names" {
  default = ["user1", "user2", "user3"]
}

output "username" {
  value =  values(aws_iam_user.example)[*].arn

}