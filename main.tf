# Configure the AWS provider with secrets.
provider "aws" {
  profile = "default_profile"
  access_key = "@{var.aws_access_key_id}"
  secret_key = "@{var.aws_secret_access_key}"
  region = "@{var.aws_region}"
}

# Create a VPC
resource "aws_vpc" "tims-vpc"{
    cidr_block = "10.0.0.0/16"
}