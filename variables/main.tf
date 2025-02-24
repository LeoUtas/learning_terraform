# declare the required provider and its version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# configure the AWS provider
provider "aws" {
  region     = "ca-central-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# create a VPC
resource "aws_vpc" "learning-aws-vpc" {
  cidr_block           = "10.0.0.0/16" # This custom CIDR block allows 65,536 IP addresses for flexibility
  enable_dns_hostnames = true          # This is set to true to allow instances to receive DNS hostnames
  enable_dns_support   = true          # This is set to true to allow instances to receive DNS support

  tags = {
    Name        = "learning-aws-vpc"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}

# create a public subnet
resource "aws_subnet" "learning-aws-public-subnet" {
  vpc_id                  = aws_vpc.learning-aws-vpc.id
  cidr_block              = "10.0.1.0/24" # allows 256 IP addresses (254 usable)
  map_public_ip_on_launch = true          # assign public IP addresses to instances launched in this subnet (i.e., public subnet)

  tags = {
    Name        = "learning-aws-public-subnet"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}

# create a private subnet
resource "aws_subnet" "learning-aws-private-subnet" {
  vpc_id                  = aws_vpc.learning-aws-vpc.id
  cidr_block              = "10.0.2.0/24" # allows 256 IP addresses (254 usable)
  map_public_ip_on_launch = false         # prevent assigning public IP addresses to instances launched in this subnet (i.e., private subnet)

  tags = {
    Name        = "learning-aws-private-subnet"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}

# create an EC2 instance using mimimal compute resources (i.e., a free tier eligible instance)
resource "aws_instance" "learning-aws-instance0" {
  ami           = var.ec2_ami           # Ubuntu 24.04
  instance_type = var.ec2_instance_type # free tier eligible instance type
  subnet_id     = aws_subnet.learning-aws-public-subnet.id

  tags = {
    Name        = "learning-aws-instance0"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}

# create an EC2 instance using mimimal compute resources (i.e., a free tier eligible instance)
resource "aws_instance" "learning-aws-instance1" {
  ami           = var.ec2_ami           # Ubuntu 24.04
  instance_type = var.ec2_instance_type # free tier eligible instance type
  subnet_id     = aws_subnet.learning-aws-public-subnet.id

  tags = {
    Name        = "learning-aws-instance1"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}

# create a S3 bucket
resource "aws_s3_bucket" "learning-aws-s3-bucket-hoangngbots" {
  bucket = "learning-aws-s3-bucket-hoangngbots"

  tags = {
    Name        = "learning-aws-s3-bucket"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}





