terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.3.0"
    }
  }
  required_version = ">= 0.14, <= 0.14.8"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "app" {
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  ami               = "ami-0c55b159cbfafe1f0"

  user_data = <<-EOF
              #!/bin/bash
              sudo service apache2 start
              EOF
  tags = {
    Name = "terraform-web-server"
  }
}

