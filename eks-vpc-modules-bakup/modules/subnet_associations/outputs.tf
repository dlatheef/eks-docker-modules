output "public_associations" {
  value = aws_route_table_association.public[*].id
}

output "private_associations" {
  value = aws_route_table_association.private[*].id
}

