provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
  }

}

locals {
  environment_name = "Dev"
}

resource "aws_instance" "Demoinstance" {
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = var.az

  tags = {
    Name = var.tag_name
  }
}