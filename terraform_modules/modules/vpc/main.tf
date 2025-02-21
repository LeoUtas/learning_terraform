# create a VPC
resource "aws_vpc" "learning-aws-vpc0" {
  cidr_block           = var.vpc_cidr_block # This custom CIDR block allows 65,536 IP addresses for flexibility
  enable_dns_hostnames = true               # This is set to true to allow instances to receive DNS hostnames
  enable_dns_support   = true               # This is set to true to allow instances to receive DNS support

  tags = {
    Name        = "learning-aws-vpc0"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}

# create a public subnet in the learning-aws-vpc0 VPC
resource "aws_subnet" "learning-aws-public-subnet-vpc0" {
  vpc_id                  = aws_vpc.learning-aws-vpc0.id
  cidr_block              = var.public_subnet_cidr_block # allows 256 IP addresses (254 usable)
  map_public_ip_on_launch = true                         # assign public IP addresses to instances launched in this subnet (i.e., public subnet)

  tags = {
    Name        = "learning-aws-public-subnet-vpc0"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}

# create a private subnet in the learning-aws-vpc0 VPC
resource "aws_subnet" "learning-aws-private-subnet-vpc0" {
  vpc_id                  = aws_vpc.learning-aws-vpc0.id
  cidr_block              = var.private_subnet_cidr_block # allows 256 IP addresses (254 usable)
  map_public_ip_on_launch = false                         # prevent assigning public IP addresses to instances launched in this subnet (i.e., private subnet)

  tags = {
    Name        = "learning-aws-private-subnet-vpc0"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}


# create a VPC
resource "aws_vpc" "learning-aws-vpc1" {
  cidr_block           = var.vpc_cidr_block # This custom CIDR block allows 65,536 IP addresses for flexibility
  enable_dns_hostnames = true               # This is set to true to allow instances to receive DNS hostnames
  enable_dns_support   = true               # This is set to true to allow instances to receive DNS support

  tags = {
    Name        = "learning-aws-vpc1"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}

# create a private subnet in the learning-aws-vpc1 VPC
resource "aws_subnet" "learning-aws-private-subnet-vpc1" {
  vpc_id                  = aws_vpc.learning-aws-vpc1.id
  cidr_block              = var.private_subnet_cidr_block # allows 256 IP addresses (254 usable)
  map_public_ip_on_launch = false                         # prevent assigning public IP addresses to instances launched in this subnet (i.e., private subnet)

  tags = {
    Name        = "learning-aws-private-subnet-vpc1"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}