resource "aws_internet_gateway" "eks_igw" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "Internet Gateway"
    Environment = var.environment
    Project     = var.project
    Owner       = var.owner
  }
}

output "igw_id" {
  value = aws_internet_gateway.eks_igw.id
}

