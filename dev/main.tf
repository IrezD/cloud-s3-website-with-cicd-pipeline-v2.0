provider "aws" {
  region = "eu-central-1"
}

locals {
  environment_name = "Dev"
}

module "prod" {
  source = "./prod"

  ami = var.ami
  instance_type = var.instance_type
  environment_name = local.environment_name
}