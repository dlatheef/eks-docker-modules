output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.allow_all.id
}
