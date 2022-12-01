locals {
  all_tags = {
    env       = "dev",
    terraform = true
  }
  applied_tags = merge(var.res_tags, local.all_tags)
}
