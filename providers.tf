provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
  
  default_tags {
    tags = {
      Project     = var.project_name
      Owner       = var.owner
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }
}
