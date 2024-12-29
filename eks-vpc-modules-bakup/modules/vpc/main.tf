resource "aws_vpc" "eks_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = var.vpc_name
    Environment = var.environment
    Project     = var.project
    Owner       = var.owner
  }
}

#output "vpc_id" {
 # value = aws_vpc.eks_vpc.id
#}

