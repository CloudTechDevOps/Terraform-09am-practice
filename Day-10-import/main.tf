resource "aws_instance" "name" {
    ami = "ami-00ca32bbc84273381"
    instance_type = "t3.micro"
    tags = {
      Name = "dev"
    }
  
}

#terraform import aws_instance.name i-0bf01838bc9e3c993  chnage instance id that already exit 

resource "aws_s3_bucket" "name" {
    bucket = "testdevproddnareh"
  
}
#terraform import aws_s3_bucket.name testdevproddnareh  here change bucket name that already exist