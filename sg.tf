# Added in default egress all rule.

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.vpc.id

  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
  }
}

# Learn our public IP address

data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}

# Setup security group to attach to phpbb_server

resource "aws_security_group" "php_sg" {
  name                = "phpbb_web_server"
  description         = "Allow SSH to select subnets and open up HTTPS to the public"
  vpc_id              = aws_vpc.vpc.id

  ingress {
    description       = "SSH"
    from_port         = 22
    to_port           = 22
    protocol          = "tcp"
    cidr_blocks       = ["${chomp(data.http.myip.body)}/32", var.private_subnet_1_cidr, var.private_subnet_2_cidr, var.private_subnet_3_cidr, var.private_subnet_4_cidr, var.private_subnet_5_cidr]
  }

  ingress {
    description       = "HTTP"
    from_port         = 80
    to_port           = 80
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
  }

  ingress {
    description       = "HTTPS"
    from_port         = 443
    to_port           = 443
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
  }

  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
  }
  
}