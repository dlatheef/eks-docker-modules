variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "igw_id" {
  description = "Internet Gateway ID"
  type        = string
}

variable "environment" {
  description = "Environment (e.g., dev, prod)"
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

#variable "public_route_table_id" {
 # description = "ID of the public route table"
 # type        = string
#}

#variable "private_route_table_id" {
 # description = "ID of the private route table"
 # type        = string
#}
