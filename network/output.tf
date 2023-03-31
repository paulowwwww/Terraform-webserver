output "subnet_1a_id" {
  value = aws_subnet.publicSUBNET1A.id
}

output "vpc_id" {
    value = aws_vpc.vpcMAIN.id
}

output "security_group_public" {
    value = aws_security_group.public.id
}


