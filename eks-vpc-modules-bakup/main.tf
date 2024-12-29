
module "eks_vpc" {
  source        = "./modules/vpc"
  vpc_name      = var.vpc_name
  cidr_block    = var.cidr_block
  environment   = var.environment
  project       = var.project
  owner         = var.owner
}

module "eks_subnets" {
  source        = "./modules/subnets"
  vpc_id        = module.eks_vpc.vpc_id
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
  environment    = var.environment
  project        = var.project
  owner          = var.owner
}

module "eks_igw" {
  source = "./modules/igw"
  vpc_id = module.eks_vpc.vpc_id
  environment    = var.environment
  project        = var.project
  owner          = var.owner

}

module "eks_route_tables" {
 source = "./modules/route_tables"
  vpc_id = module.eks_vpc.vpc_id
  igw_id      = module.eks_igw.igw_id
  public_subnets = module.eks_subnets.public_subnets
  private_subnets = module.eks_subnets.private_subnets
#  public_route_table_id  = aws_route_table.public.id
 # private_route_table_id = aws_route_table.private.id
  environment = var.environment
  project     = var.project
  owner       = var.owner
}

module "subnet_associations" {
  source = "./modules/subnet_associations"

  public_subnets         = module.eks_subnets.public_subnets
  private_subnets        = module.eks_subnets.private_subnets
  public_route_table_id  = module.eks_route_tables.public_route_table_id
  private_route_table_id = module.eks_route_tables.private_route_table_id
}

module "eks_security_group" {
  source      = "./modules/security_group"
  vpc_id      = module.eks_vpc.vpc_id
  environment = var.environment
  project     = var.project
  owner       = var.owner
}


module "ec2_instance" {
  source             = "./modules/ec2"
  instance_type      = var.instance_type
  key_name           = var.key
  associate_public_ip = true
  instance_name      = var.instance_name
  user_data          = "app.sh"
  vpc_security_group_ids = [module.eks_security_group.security_group_id]
 # vpc_security_group_ids = [module.eks_security_group.security_group_id]  # Using security group from eks_security_group module
  subnet_id          = module.eks_subnets.public_subnets[0]
 # vpc_id             = module.eks_vpc.vpc_id  # Using vpc_id from eks_vpc module
}

