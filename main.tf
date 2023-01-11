# Configure the AWS provider with secrets.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  shared_config_files      = ["C:/users/timot/.aws/conf"]
  shared_credentials_files = ["C:/users/timot/.aws/credentials"]
  profile                  = "default"
}