output "kms_key_arn" {
  value = aws_kms_key.s3_key.arn
}

output "vpc_id" {
  value = aws_vpc.custom_vpc.id
}

output "subnet_id" {
  value = aws_subnet.public_subnet_1.id
}

output "route_table_id" {
  value = aws_route_table.public_route_table.id
}