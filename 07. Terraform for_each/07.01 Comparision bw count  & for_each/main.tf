# for_each

resource "aws_iam_user" "example" {
  for_each = toset(var.user_names)
  name     = each.value
}

variable "user_names" {
  default = ["user1", "user2", "user3"]
}

output "username" {
  value       = values(aws_iam_user.example)[*].arn
  description = "The ARNs for all users"

}


##############

# count 

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  default     = ["user1", "user2", "user3"]
}

output "first_arn" {
  value       = aws_iam_user.example[0].arn
  description = "The ARN for the first user"
}

output "all_arns" {
  value       = aws_iam_user.example[*].arn
  description = "The ARNs for all users"
}


#Count has limitation 

# recommended to use for_each
