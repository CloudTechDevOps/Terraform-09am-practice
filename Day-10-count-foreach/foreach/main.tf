resource "aws_instance" "name" {
    ami = "ami-08a6efd148b1f7504"
    instance_type = "t2.micro"
    for_each = toset(var.ec2)
    #count = length(var.ec2)
    tags = {
      Name = each.value
    }
  
}



variable "ec2" {
    type = list(string)
    default = [ "dev", "prod"]
  
}