variable "cidr_block " {
    type = string
    description = ""
}

variable "instance_tenancy" {
    type = string
    description = ""
}

variable "enable_dns_hostnames" {
    type = string
    description = ""
}

variable "domain_name" {
    type = string
    description = ""
}

variable "domain_name_servers" {
    type = string
    description = ""
}

variable "tagsName" {
    type = string
    description = ""
}

variable "tagsTerraform" {
    type = string
    description = ""
    value = "yes"
}

variable "tagsEnvironment" {
    type = string
    description = ""
    value = "dev"
}