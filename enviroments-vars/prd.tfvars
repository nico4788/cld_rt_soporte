# Production Environment Variables
aws_region     = "us-east-1"
project_name   = "rt-soporte"
owner          = "cldng"
environment    = "prd"

# Network Configuration
vpc_cidr           = "10.30.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]

# EC2 Configuration
instance_type   = "t3.medium"
key_pair_name   = "rt-soporte-prd-key"  #s crear este key pair en AWS