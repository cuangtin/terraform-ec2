terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-south-1"
  profile  = "quangtin26"
}

resource "aws_instance" "app_server" {
  ami           = "ami-01a4f99c4ac11b03c"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
