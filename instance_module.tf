module "ec2_instance" {
  source = "./modules/aws_instance"

  for_each = toset(["one", "two", "three"])

  name = "rhel-${each.key}"

  ami                  = "ami-051f0947e420652a9"
  key_name             = "default"
  iam_instance_profile = "ssm-agent"
  tagName              = "rhel-${each.key}"
}