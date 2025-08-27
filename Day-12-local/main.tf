locals {
  region = "us-east-1"
  instance_type = "t2.micro"
  
}
provider "aws" {
    region = local.region
  
}
resource "aws_instance" "name" {
    ami = "ami-08a6efd148b1f7504"
    instance_type = local.instance_type
  
}