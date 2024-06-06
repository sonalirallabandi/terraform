

data "aws_vpc" "data-souce" {
  id = var.vpc_id
}

resource "aws_subnet" "data-source-subnet" {
  vpc_id            = data.aws_vpc.data-souce.id
  availability_zone = "us-east-1a"
  cidr_block        = "172.20.20.0/24"
  tags = {
    Name = "datasource-name"

  }
}