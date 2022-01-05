terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

#provider "aws" {
#  profile = "default"
#  region  = "us-east-2"
#}

resource "aws_instance" "ehsamtest-_server" {
  ami             = "ami-0fb653ca2d3203ac1"
  instance_type   = "t2.micro"
  key_name        = "UB-keypair"
  user_data       = "${file("userdata.sh")}"
  #security_groups = ["webserver"]

  tags = {
    Name = "Ehsam-test"
  }
}

#resource "aws_security_group" "Docker" {
#  tags = {
#    type = "terraform-test-security-group"
#  }
#}
