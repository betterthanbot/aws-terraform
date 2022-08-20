variable "name" {
  description = "Name to be used on EC2 instance created"
  type        = string
  default     = ""
}

variable "ami" {
  type        = string
  description = ""
}

variable "launch_template" {
  description = "Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template"
  type        = map(string)
  default     = null
}

variable "tenancy" {
  description = "The tenancy of the instance (if the instance is running in a VPC). Available values: default, dedicated, host."
  type        = string
  default     = null
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  type        = bool
  default     = false
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "associate_public_ip_address" {
  type        = bool
  description = ""
  default     = null
}

variable "availability_zone" {
  description = "AZ to start the instance in"
  type        = string
  default     = null
}

variable "host_id" {
  description = "ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host"
  type        = string
  default     = null
}

variable "get_password_data" {
  description = "If true, wait for password data to become available and retrieve it."
  type        = bool
  default     = null
}

variable "key_name" {
  type        = string
  description = ""
  default = null
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
  default     = null
}


variable "iam_instance_profile" {
  type        = string
  description = ""
  default     = null
}

variable "private_ip" {
  type        = string
  description = ""
  default     = null
}

variable "secondary_private_ips" {
  description = "A list of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e. referenced in a `network_interface block`"
  type        = list(string)
  default     = null
}

variable "subnet_id" {
  type        = string
  description = ""
  default     = null
}

variable "ipv6_address_count" {
  description = "A number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet"
  type        = number
  default     = null
}

variable "ipv6_addresses" {
  description = "Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface"
  type        = list(string)
  default     = null
}



#root volume
variable "volume_size" {
  type        = number
  description = ""
  default     = null
}
variable "volume_type" {
  type        = string
  description = ""
  default     = null
}

#tags
variable "tagName" {
  type        = string
  description = ""
}