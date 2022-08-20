module "test_vpc" {
  source               = "/modeules/aws_vpc"
  cidr_block           = "192.168.1.0/24"
  instance_tenancy     = "default"
  enable_dns_hostnames = true

}

module "test_dhcp" {
  source = "/modeules/aws_vpc"

  domain_name         = "ap-southeast-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

}
