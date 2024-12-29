variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "project" {
  description = "Project name"
  type        = string
}

variable "owner" {
  description = "Owner of the project"
  type        = string
}
####################### changes #########

variable "instance_type" {
  description = "Type of the EC2 instance for EKS management"
  type        = string
}

variable "key" {
  description = "SSH key pair for EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}





#variable "vpc_id" {
 # description = "The ID of the VPC"
 # type        = string
#}

#variable "igw_id" {
 # description = "The ID of the Internet Gateway"
  #type        = string
#}
