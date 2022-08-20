terraform {
  required_version = ">= 1.2.0"
}

resource "aws_instance" "instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  iam_instance_profile        = var.iam_instance_profile

  vpc_security_group_ids = var.vpc_security_group_ids
  private_ip             = var.private_ip
  subnet_id              = var.subnet_id

  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
    encrypted   = true
  }

  tags = {
    Name = "${var.tagName}"
  }
}