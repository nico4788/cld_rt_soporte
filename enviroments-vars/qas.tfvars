# QAS Environment Variables
aws_region     = "us-east-1"
project_name   = "rt-soporte"
owner          = "cldng"
environment    = "qas"

# Network Configuration
vpc_cidr           = "10.20.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]

# EC2 Configuration
instance_type   = "t3.small"
key_pair_name   = "rt-soporte-qas-key"  # crear este key pair en AWS