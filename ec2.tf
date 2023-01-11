# Pull data on AMI catalog for phpBB package by Bitnami.

data "aws_ami" "phpbb_ami" {
    most_recent = true
    filter {
        name = "phpBB packaged by Bitnami"
    }
}

# Create network interface for public phpBB server.

resource "aws_network_interface" "phpbb_server" {
  subnet_id   = aws_subnet.public_subnet_1.id
  private_ips = ["10.0.1.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

# Provision phpBB instance as a t2.micro EC2 instance.

resource "aws_instance" "phpbb_server" {
  ami           = data.aws_ami.phpbb_ami
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.phpbb_server.id
    device_index         = 0
  }
}