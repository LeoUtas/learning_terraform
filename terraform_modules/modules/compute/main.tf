# create an EC2 instance using mimimal compute resources (i.e., a free tier eligible instance)
resource "aws_instance" "learning-aws-instance0" {
  ami           = var.ec2_ami           # Ubuntu 24.04
  instance_type = var.ec2_instance_type # free tier eligible instance type
  subnet_id     = var.subnet_id

  tags = {
    Name        = "learning-aws-instance0-vpc0"
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
  subnet_id     = var.subnet_id

  tags = {
    Name        = "learning-aws-instance1-vpc0"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}

# create an EC2 instance using mimimal compute resources (i.e., a free tier eligible instance)
resource "aws_instance" "learning-aws-instance2" {
  ami           = var.ec2_ami           # Ubuntu 24.04
  instance_type = var.ec2_instance_type # free tier eligible instance type
  subnet_id     = var.subnet_id

  tags = {
    Name        = "learning-aws-instance2-vpc1"
    Team        = "HoangNgBots"
    Owner       = "HoangNg"
    Purpose     = "learning AWS and terraform"
    Environment = "learning"
  }
}