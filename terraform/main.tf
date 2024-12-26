provider "aws" {
  region = var.region
}

resource "aws_instance" "mock_app" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "MockAppInstance"
  }
}
