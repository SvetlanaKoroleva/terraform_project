resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true # If i add this string, i able to create RDS
  tags = var.tags
}

resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet1
  tags = var.tags
  map_public_ip_on_launch = true # Specify true to indicate that instances launched into the subnet should be assigned a public IP address
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet2
  tags = var.tags
  map_public_ip_on_launch = true # Specify true to indicate that instances launched into the subnet should be assigned a public IP address
}

resource "aws_subnet" "public3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet3
  tags = var.tags
  map_public_ip_on_launch = true # Specify true to indicate that instances launched into the subnet should be assigned a public IP address
}


resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet1
  tags = var.tags
  map_public_ip_on_launch = false # In private subnet it would false
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet2
  tags = var.tags
  map_public_ip_on_launch = false # In private subnet it would false
}

resource "aws_subnet" "private3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet3
  tags = var.tags
  map_public_ip_on_launch = false # In private subnet it would false
}