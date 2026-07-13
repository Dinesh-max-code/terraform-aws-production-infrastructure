resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "prod-vpc"
    environment = "production"
    project     = "Terraform AWS Production Infrastructure"
    managedby   = "terraform"
  }

}

resource "aws_subnet" "public_a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  availability_zone = "${var.aws_region}a"

  map_public_ip_on_launch = true

  tags = {
    Name = "prod-public-subnet-a"
    Type = "Public"
  }

}

resource "aws_subnet" "public_b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  availability_zone = "${var.aws_region}b"

  map_public_ip_on_launch = true

  tags = {
    Name = "prod-public-subnet-b"
    Type = "Public"
  }

}

resource "aws_subnet" "private_a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  availability_zone = "${var.aws_region}a"


  tags = {
    Name = "prod-private-subnet-a"
    Type = "Private"
  }

}

resource "aws_subnet" "private_b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"

  availability_zone = "${var.aws_region}b"

  tags = {
    Name = "prod-private-subnet-b"
    Type = "Private"
  }

}