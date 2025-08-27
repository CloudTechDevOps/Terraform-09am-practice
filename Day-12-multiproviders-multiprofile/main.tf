provider "aws" {
  region = "us-east-1"
  profile = "prod"
 
  
}

provider "aws" {
  region = "us-west-2"
  alias = "dev"
  profile = "prod"
}

resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    provider = aws.dev
  
}

resource "aws_s3_bucket" "name" {
    bucket = "tdcsgddhsvdsh"
  
}

#note we can use multi provider block if diff requiremnt and diff resource and diff regions