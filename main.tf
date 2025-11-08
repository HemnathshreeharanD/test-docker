provider "aws" {
  region = "eu-west-1"
}

resource "aws_security_group" "web_sg1" {
  name        = "web_sg1"
  description = "Allow HTTP and SSH"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  ami           = "ami-06297e16b71156b52"           # Amazon Linux 2 AMI, update as needed
  instance_type = "t3.micro"
  key_name      = "awsdocker"               # <-- Replace with your key pair name
  security_groups = [aws_security_group.web_sg1.name]

  tags = {
    Name = "Terraform-Web-Server"
  }
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}
