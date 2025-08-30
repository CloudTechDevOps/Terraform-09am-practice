# provider "aws" {
  
# }
# variable "aws_region" {
#   type        = string
#   nullable    = false
#   default     = "ap-south-1" #here we need to define either us-west-1 or eu-west-2 if i give other region will get error 
#   validation {
#     condition = var.aws_region == "us-west-2" || var.aws_region == "eu-west-1" || var.aws_region == "us-east-1"
#     error_message = "The variable 'aws_region' must be one of the following regions: us-west-2, eu-west-1"
#   }
# }


#  resource "aws_s3_bucket" "dev" {
#     bucket = "statefile-configuresss"
#     region = var.aws_region
    
  
# }

#after run this will get error like The variable 'aws_region' must be one of the following regions: us-west-2,│ eu-west-1, so it will allow any one region defined above in conditin block



## Example-2
# variable "create_bucket" {
#   type    = bool
#   default = false
# }

# resource "aws_s3_bucket" "example" {
#   count  = var.create_bucket ? 1 : 0
#   bucket = "my-terraform-example"
# }

# ## Example-3 ## you can try 
# resource "aws_instance" "example" {
#   count         = var.environment == "prod" ? 3 : 1
#   ami           = "ami-123456"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "example-${count.index}"
#   }
# }

#In this case:
#If var.environment == "prod" → count = 3
#Else (like dev, qa, etc.) → count = 1
#terraform apply -var="environment=dev"