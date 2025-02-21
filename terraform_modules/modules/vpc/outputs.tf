output "public_subnet_id" {
  value = aws_subnet.learning-aws-public-subnet-vpc0.id
  description = "ID of the public subnet"
}
