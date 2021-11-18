provider "aws" {
  region = var.region
}

module "aws_federation_github" {
  source = "../../"

  enabled               = var.enabled
  force_detach_policies = var.force_detach_policies
  iam_policy_name       = var.iam_policy_name
  iam_policy_path       = var.iam_policy_path
  iam_role_name         = var.iam_role_name
  iam_role_path         = var.iam_role_path
  github_organisation   = var.github_organisation
  github_repository     = var.github_repository
  tags                  = var.tags
}
