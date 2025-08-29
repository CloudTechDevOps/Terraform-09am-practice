# provider "aws" {
  
# }

### tofu ####
terraform {
  required_providers {
    aws = {
      source  = "registry.opentofu.org/hashicorp/aws"
    #   version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}



#  ## terraform providers # ##
# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"  # maps to registry.opentofu.org/hashicorp/aws
#       version = "~> 5.0"
#     }
#   }
# }

# provider "aws" {
#   region = "us-east-1"
# }
