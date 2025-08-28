provider "aws" {
  
}
resource "aws_vpc_peering_connection" "foo" {
  peer_vpc_id   = aws_vpc.vpca.id
  vpc_id        = aws_vpc.vpcb.id
  accepter {
    allow_remote_vpc_dns_resolution = true
  }
}

resource "aws_vpc" "vpca" {
  cidr_block = "10.1.0.0/16"
}

resource "aws_vpc" "vpcb" {
  cidr_block = "10.2.0.0/16"
}
