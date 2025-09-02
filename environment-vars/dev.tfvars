# Development Environment Variables
aws_region     = "us-east-1"
aws_profile    = "cld-sandbox"
project_name   = "rt-soporte"
owner          = "cldng"
environment    = "dev"

# Network Configuration
vpc_cidr           = "10.0.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]

# EC2 Configuration
instance_type   = "t3.micro"
key_pair_name   = "rt-soporte-dev-key"  # Debes crear este key pair en AWS