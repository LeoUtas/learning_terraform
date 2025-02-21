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