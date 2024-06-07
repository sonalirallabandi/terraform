output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.default.id
}

output "public_subnet1" {
  value = aws_subnet.subnet1-public.id
}

output "public_subnet2" {
  value = aws_subnet.subnet2-public.id
}