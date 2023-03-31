data "aws_ami" "ubuntu" {
most_recent = true

    filter {
     name   = "name"
     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
   }

   owners = ["099720109477"] # Ubuntu
 }
 resource "aws_instance" "ec2" {
   ami                    = data.aws_ami.ubuntu.id
   instance_type          = var.t2
   key_name               = var.awskey
   subnet_id              = var.subnet_id
   vpc_security_group_ids = var.security_group
 }