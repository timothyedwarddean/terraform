# Pull data on AMI catalog for phpBB package by Bitnami.

data "aws_ami" "phpbb_ami" {
    most_recent = true
    filter {
        name = "name"
        values = ["bitnami-phpbb*"]
    }
}

# Create network interface for public phpBB server.

resource "aws_network_interface" "phpbb_server" {
  subnet_id       = aws_subnet.public_subnet_1.id
  private_ips     = ["10.0.1.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

# Provision phpBB instance as a t2.micro EC2 instance and name phpBB_server

resource "aws_instance" "phpbb_server" {
  ami             = data.aws_ami.phpbb_ami.id
  instance_type   = "t2.micro"
  key_name        = "default-key"

  network_interface {
    network_interface_id = aws_network_interface.phpbb_server.id
    device_index         = 0
  }

  tags = {
    Name          = "phpBB_server"
    description   = "EC2 instance for phpBB forum."
    "web_server"  = "Yes"
  }
}

# Attach security group to phpbb server EC2 instance.

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.php_sg.id
  network_interface_id = aws_instance.phpbb_server.primary_network_interface_id
}