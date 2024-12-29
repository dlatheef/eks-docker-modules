variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be deployed"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "associate_public_ip" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = true
}

variable "user_data" {
  description = "Path to the user data script"
  type        = string
  default     = "app.sh"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs for the EC2 instance"
  type        = list(string)
}
