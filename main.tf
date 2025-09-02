terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  
  default_tags {
    tags = {
      Project     = var.project_name
      Owner       = var.owner
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }
}

# Módulo Global (recursos únicos)
module "global" {
  source = "./modules/global"
  
  project_name = var.project_name
  environment  = var.environment
  owner        = var.owner
}

# Módulo Regional (VPC, EC2, etc.)
module "regional" {
  source = "./modules/regional"
  
  project_name = var.project_name
  environment  = var.environment
  owner        = var.owner
  aws_region   = var.aws_region
  
  vpc_cidr              = var.vpc_cidr
  availability_zones    = var.availability_zones
  instance_type         = var.instance_type
  key_pair_name         = var.key_pair_name
  
  # Outputs del módulo global
  s3_bucket_name = module.global.s3_bucket_name
  ec2_role_arn   = module.global.ec2_role_arn
  
  depends_on = [module.global]
}