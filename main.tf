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

# Create a new AWS Linux Instance
resource "aws_lightsail_instance" "first_magento_instance" {
  name              = "custom_instance"
  availability_zone = "ap-south-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "micro_2_1"
  tags = {
    dv = "dv2uang"
  }
}
resource "aws_lightsail_certificate" "dv2uang" {
  name                      = "dv2uang"
  domain_name               = "1st-lightsail.dv2uang"
  subject_alternative_names = ["www.1st-lightsail.dv2uang"]
}
