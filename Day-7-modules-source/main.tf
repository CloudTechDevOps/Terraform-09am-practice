resource "aws_instance" "dev" {
    ami = var.ami-id
    instance_type = var.instance-type
    availability_zone = var.zone
    tags = {
      Name = var.name
    }
  
}
