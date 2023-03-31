resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.vpcMAIN.id
}

resource "aws_route" "access_rt" {
    route_table_id         = aws_route_table.public_rt.id
    destination_cidr_block = var.cidir0
    gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "public_assoc" {
    subnet_id      = aws_subnet.publicSUBNET1A.id
    route_table_id = aws_route_table.public_rt.id
}