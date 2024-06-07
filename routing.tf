resource "aws_route_table" "terraform-public" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name  = "${var.Main_Routing_Table}"
    value = var.star1
    valu  = var.star2
  }
}

resource "aws_route_table_association" "terraform-public" {
  subnet_id      = aws_subnet.subnet-public-1.id
  route_table_id = aws_route_table.terraform-public.id
}