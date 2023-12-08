provider "aws" {
  region = "eu-central-1"
}


module "prod" {
  source = "../prod"
  
  ami = var.ami
  instance_type = var.instance_type
  az = "eu-central-1b"
}