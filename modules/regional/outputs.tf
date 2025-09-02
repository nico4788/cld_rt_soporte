output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}

output "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  value       = aws_nat_gateway.main.id
}

output "bastion_instance_id" {
  description = "Instance ID of bastion host"
  value       = aws_instance.bastion.id
}

output "bastion_public_ip" {
  description = "Public IP of bastion host"
  value       = aws_instance.bastion.public_ip
}

output "bastion_private_ip" {
  description = "Private IP of bastion host"
  value       = aws_instance.bastion.private_ip
}

output "private_instance_id" {
  description = "Instance ID of private EC2"
  value       = aws_instance.private.id
}

output "private_instance_private_ip" {
  description = "Private IP of private EC2"
  value       = aws_instance.private.private_ip
}

output "bastion_security_group_id" {
  description = "Security Group ID of bastion host"
  value       = aws_security_group.bastion.id
}

output "private_security_group_id" {
  description = "Security Group ID of private instances"
  value       = aws_security_group.private_instances.id
}
