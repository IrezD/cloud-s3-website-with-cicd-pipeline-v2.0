provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "Demoinstance" {
  ami = "ami-0669b163befffbdfc"
  instance_type = "t2.micro"
}