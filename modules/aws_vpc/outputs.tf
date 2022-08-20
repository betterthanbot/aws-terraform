output "vpc" {
    value = aws_vpc.vpc
    description = ""
}

output "vpc_dhcp" {
    value = aws_vpc_dhcp_options.vpc_dhcp
    description = "vpc_dhcp details"
}