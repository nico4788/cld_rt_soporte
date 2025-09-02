variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment (dev, qas, prd)"
  type        = string
}

variable "owner" {
  description = "Project owner"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_pair_name" {
  description = "EC2 Key Pair name for SSH access"
  type        = string
}

# Variables que vienen del módulo global
variable "s3_bucket_name" {
  description = "S3 bucket name from global module"
  type        = string
}

variable "ec2_role_arn" {
  description = "EC2 role ARN from global module"
  type        = string
}

variable "ec2_instance_profile_name" {
  description = "EC2 instance profile name from global module"
  type        = string
  default     = ""
}