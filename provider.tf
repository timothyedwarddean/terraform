# Configure the AWS provider with secrets.
provider "aws" {
  profile = "default_profile"
  access_key = "@{var.aws_access_key_id}"
  secret_key = "@{var.aws_secret_access_key}"
  region = "@{var.aws_region}"
}