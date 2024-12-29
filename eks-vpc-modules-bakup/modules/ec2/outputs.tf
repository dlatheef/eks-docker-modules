output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.eks_management_instance.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.eks_management_instance.public_ip
}

