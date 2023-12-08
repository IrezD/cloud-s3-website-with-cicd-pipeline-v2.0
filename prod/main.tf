provider "aws" {
  region = "eu-central-1"
}

locals {
  environment_name = "Production"
}

resource "aws_instance" "Demoinstance" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name =  local.environment_name
  }
}