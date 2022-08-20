variable "cidr_block" {
  type        = string
  description = ""
}

variable "instance_tenancy" {
  type        = string
  description = ""
}

variable "enable_dns_hostnames" {
  type        = string
  description = ""
}

variable "domain_name" {
  type        = string
  description = ""
}

variable "domain_name_servers" {
  type        = list(string)
  description = ""
}