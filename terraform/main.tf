provider "aws" {
  region = var.region
}

resource "aws_instance" "mock_app" {
  ebs_optimized = true
  monitoring = true
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "MockAppInstance"
  }
}
