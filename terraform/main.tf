terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}



resource "aws_instance" "app_server" {
  ami           = "ami-08ca3fed11864d6bb"
  instance_type = "t3.micro"

  tags = {
    Name = "altia-16-terraform"
  }
}

