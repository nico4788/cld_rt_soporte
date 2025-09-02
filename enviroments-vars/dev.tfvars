# Development Environment Variables
aws_region     = "us-east-1"
project_name   = "rt-soporte"
owner          = "cldng"
environment    = "dev"
#########################
######## Network ########
#########################
vpc_cidr           = "10.10.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]

#########################
########## EC2 ##########
#########################
instance_type   = "t3.micro"
key_pair_name   = "rt-soporte-dev-key"  # crear este key pair en AWS