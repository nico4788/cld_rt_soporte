output "s3_bucket_name" {
  description = "Name of the S3 bucket"
  value       = module.global.s3_bucket_name
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.regional.vpc_id
}

output "bastion_public_ip" {
  description = "Public IP of bastion host"
  value       = module.regional.bastion_public_ip
}

output "private_instance_id" {
  description = "ID de la instancia EC2 privada" 
  value       = module.regional.private_instance_id
}

output "bastion_ssh_command" {
  description = "Comando SSH para conectarse al bastion"
  value       = "ssh -i ~/.ssh/${var.key_pair_name}.pem ec2-user@${module.regional.bastion_public_ip}"
}

output "private_instance_ssh_command" {
  description = "Comando SSH para conectarse a la instancia privada a través del bastion"
  value       = "ssh -i ~/.ssh/${var.key_pair_name}.pem -J ec2-user@${module.regional.bastion_public_ip} ubuntu@${module.regional.private_instance_private_ip}"
}