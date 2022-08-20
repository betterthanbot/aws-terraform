resource "aws_vpc_dhcp_options" "gibson_dhcp" {
  domain_name         = "ap-southeast-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    Name        = "gibson_dhcp",
    Terraform   = "Yes",
    Environment = "Dev"
  }
}

resource "aws_vpc_dhcp_options_association" "gibson_dhcp_resolver" {
  vpc_id          = aws_vpc.gibson_vpc.id
  dhcp_options_id = aws_vpc_dhcp_options.gibson_dhcp.id
}

#vpc
resource "aws_vpc" "gibson_vpc" {
  cidr_block           = "192.168.1.0/24"
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name        = "gibson_vpc",
    Terraform   = "Yes",
    Environment = "Dev"
  }
}
