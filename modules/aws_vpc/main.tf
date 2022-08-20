terraform{
  required_version = ">= 1.2.0"
}

#vpc
resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  instance_tenancy     = var.instance_tenancy
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name        = "vpc_module" 
  }
}

#dhcp
resource "aws_vpc_dhcp_options" "vpc_dhcp" {
  domain_name         = var.domain_name
  domain_name_servers = var.domain_name_servers

  tags = {
    Name        = "vpc_dhcp_module"
  }
}

resource "aws_vpc_dhcp_options_association" "vpc_dhcp_association" {
  vpc_id          = aws_vpc.vpc.id
  dhcp_options_id = aws_vpc_dhcp_options.vpc_dhcp.id
}

