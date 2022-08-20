variable "ami" {
    type = string
    description = ""
}
variable "instance_type" {
    type = string
    description = ""
    default = "t2.micro"
}
variable "associate_public_ip_address" {
    type = string
    description = ""
    default = ""    
}
variable "key_name" {
    type = string
    description = ""
}
variable "vpc_security_group_ids" {
    type = list(string)
    description = ""
    default = ""
}
variable "iam_instance_profile" {
    type = string
    description = ""
    default = ""
}
variable "private_ip" {
    type = string
    description = ""
    default = ""
}
variable "subnet_id" {
    type = string
    description = ""
    default = ""
}

#root volume
variable "volume_size" {
    type = string
    description = ""
    default = ""
}
variable "volume_type" {
    type = string
    description = ""
    default = ""
}