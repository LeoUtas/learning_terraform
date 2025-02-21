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

# source to the VPC module
module "aws_vpc" {
  source = "./modules/vpc"
}

# source to the compute module
module "aws_compute" {
  source = "./modules/compute"
  subnet_id = module.aws_vpc.public_subnet_id
}

# source to the storage module
module "aws_storage" {
  source = "./modules/storage"
}
