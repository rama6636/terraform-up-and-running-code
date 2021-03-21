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
resource "aws_security_group" "instance" {
  name = "terraform-example-sg"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app" {
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  ami               = "ami-0c55b159cbfafe1f0"
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  tags = {
    Name = "terraform-web-server"
  }
}
