data "aws_availability_zones" "available" {}

resource "aws_subnet" "public" {
  count                   = length(var.public_subnets)
  vpc_id                  = var.vpc_id
  cidr_block             = var.public_subnets[count.index]
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name        = "Public Subnet ${count.index + 1}"
    Environment = var.environment
    Project     = var.project
    Owner       = var.owner
  }
}

resource "aws_subnet" "private" {
  count             = length(var.private_subnets)
  vpc_id            = var.vpc_id
  cidr_block       = var.private_subnets[count.index]
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  tags = {
    Name        = "Private Subnet ${count.index + 1}"
    Environment = var.environment
    Project     = var.project
    Owner       = var.owner
  }
}


