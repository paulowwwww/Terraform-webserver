resource "aws_vpc" "vpcMAIN" {
    cidr_block           = var.vpcCIDRblock
    enable_dns_hostnames = true
    enable_dns_support   = true

    tags = {
    Name = "${var.name_project}-VPC"
  }
}

resource "aws_subnet" "publicSUBNET1A" {
    vpc_id                  = aws_vpc.vpcMAIN.id
    cidr_block              = var.publicSUBNET-1A
    availability_zone       = var.AvailabilityZone1A
    map_public_ip_on_launch = true

    tags = {
    Name = "${var.name_project}-Subnet-Public-1A"
  }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpcMAIN.id 
  
}


