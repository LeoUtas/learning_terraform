variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be deployed"
  type        = string
}

# def a variable for the EC2 instance type
variable "ec2_instance_type" {
  description = "The type of EC2 instance to launch"
  default     = "t2.micro"
}

# def a variable for the EC2 instance coun
variable "ec2_ami" {
  description = "A configuration of AMI to use for the EC2 instances, use ubuntu 24.04"
  type        = string
  default     = "ami-055943271915205db"
}