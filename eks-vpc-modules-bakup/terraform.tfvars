vpc_name       = "eks_vpc"
cidr_block     = "10.0.0.0/16"
public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
environment    = "dev"
project        = "arsaminor"
owner          = "Latheef"
#vpc_id = module.eks_vpc.vpc_id
#igw_id = module.eks_vpc.igw_id
instance_type = "t2.micro"
key                    = "jenkinserver"
instance_name           = "Managemnetnode"
