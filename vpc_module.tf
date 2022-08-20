module "New_vpc" {
  source               = "./modules/aws_vpc"
  cidr_block           = "192.168.1.0/24"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  domain_name          = "ap-southeast-1.compute.internal"
  domain_name_servers  = ["AmazonProvidedDNS"]
}