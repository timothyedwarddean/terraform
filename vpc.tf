# Create VPC
resource "aws_vpc" "vpc" {
  cidr_block              = "${var.vpc_cidr}"
  instance_tenancy        = "default"
  enable_dns_hostnames    = true

  tags        = {
  Name        = "VPC"
  }
}

# Create Internet Gateway and attach it to VPC
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id    = aws_vpc.vpc.id

  tags      = {
  Name      = "main-internet-gateway"
  }
}

# Create Public Subnet 1
resource "aws_subnet" "public_subnet_1" {
  vpc_id                      = aws_vpc.vpc.id
  cidr_block                  = "${var.public_subnet_1_cidr}"
  availability_zone           = "us-east-1a"
  map_public_ip_on_launch     = true

  tags        = {
  Name        = "Public Subnet 1"
  }
}

# Create Public Subnet 2
resource "aws_subnet" "public_subnet_2" {
  vpc_id                      = aws_vpc.vpc.id
  cidr_block                  = "${var.public_subnet_2_cidr}"
  availability_zone           = "us-east-1b"
  map_public_ip_on_launch     = true

  tags        = {
  Name        = "Public Subnet 2"
  }
}

# Create route table and add public route
resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.vpc.id

  route {
  cidr_block              = "0.0.0.0/0"
  gateway_id              = aws_internet_gateway.internet_gateway.id
  }

  tags = {
  Name = "Public Route Table"
  }
}

# Associate Public Subnet 1 to "Public Route Table"
resource "aws_route_table_association" "public_subnet_1_route_table_association" {
  subnet_id                 = aws_subnet.public_subnet_1.id
  route_table_id            = aws_route_table.public_route.id
}

# Associate Public Subnet 2 to "Public Route Table"
resource "aws_route_table_association" "public_subnet_2_route_table_association" {
  subnet_id                 = aws_subnet.public_subnet_2.id
  route_table_id            = aws_route_table.public_route.id
}

# Create Private Subnet 1
resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.private_subnet_1_cidr}"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags        = {
  Name    = "Private Subnet 1 | App Tier"
  }
}

# Create Private Subnet 2
resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.private_subnet_2_cidr}"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags        = {
  Name    = "Private Subnet 2 | App Tier"
  }
}

# Create Private Subnet 3
resource "aws_subnet" "private_subnet_3" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.private_subnet_3_cidr}"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = false

  tags        = {
  Name    = "Private Subnet 3 | App Tier"
  }
}

# Create Private Subnet 4
resource "aws_subnet" "private_subnet_4" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.private_subnet_4_cidr}"
  availability_zone       = "us-east-1d"
  map_public_ip_on_launch = false

  tags        = {
  Name    = "Private Subnet 4 | App Tier"
  }
}

# Create Private Subnet 5
resource "aws_subnet" "private_subnet_5" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "${var.private_subnet_5_cidr}"
  availability_zone       = "us-east-1e"
  map_public_ip_on_launch = false

  tags        = {
  Name    = "Private Subnet 5 | App Tier"
  }
}