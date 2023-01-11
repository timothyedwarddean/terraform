resource "aws_instance" "phpBB_ec2" {
    ami = "ami-0627a38def1fdd112"
    instance_type = t2.micro
}