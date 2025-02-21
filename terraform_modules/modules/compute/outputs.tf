# output the instance id of the created instance
output "instance0_id" {
  description = "instance id of the created instance"
  value       = aws_instance.learning-aws-instance0.id
}

output "instance1_id" {
  description = "instance id of the created instance"
  value       = aws_instance.learning-aws-instance1.id
}

# output the public ip of the created instance
output "instance0_ip" {
  description = "public ip of the created instance0"
  value       = aws_instance.learning-aws-instance0.public_ip
}

output "instance1_ip" {
  description = "public ip of the created instance1"
  value       = aws_instance.learning-aws-instance1.public_ip
}