module "ec2_instance" {
  source  = "./modules/aws_isntance"
  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "default"
}