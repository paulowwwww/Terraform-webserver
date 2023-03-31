variable "t2" {
    default = "t2.micro"
}

variable "awskey" {
    default = "aws-class-1"
}

variable "subnet_id" {}

variable "security_group" {
    type = list(string)
    default = []
}