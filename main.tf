provider "aws" {
  region = "eu-central-1"
}

module "prod" {
  source = "./prod"
}

module "dev" {
  source = "./dev"
}

module "web" {
  source = "./web"
}

resource "aws_instance" "Demoinstance" {
  ami = "ami-0669b163befffbdfc"
  instance_type = "t2.micro"
}