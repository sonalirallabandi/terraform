resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name        = "${var.vpc_name}"
    Owner       = "sonali"
    environment = "${var.environment}"
    value       = var.star1
    valu        = var.star2
  }
  depends_on = [
    "aws_dynamodb_table.dynamodb-terraform-lock"
  ]

}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "${var.IGW_name}"
  }
}