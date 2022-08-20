module "iam_assumable_role_custom" {
  source = "./modules/aws_iam_role"

  trusted_role_arns = [
    "arn:aws:iam::394328311877:root",
  ]

  create_role             = true
  create_instance_profile = true

  role_name         = "ssm-agent"
  role_requires_mfa = false

  attach_ssm_policy = true

  tags = {
    Role = "ssm-agent"
  }

}