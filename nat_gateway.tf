resource "aws_eip" "nat" {

  domain = "vpc"

  tags = {
    Name = "prod-nat-eip"
  }

}

resource "aws_nat_gateway" "main" {

  allocation_id = aws_eip.nat.id

  subnet_id = aws_subnet.public_a.id

  tags = {

    Name = "prod-nat-gateway"

  }

  depends_on = [

    aws_internet_gateway.main

  ]

}