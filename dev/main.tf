provider "aws" {
  region = "eu-central-1"
}


module "prod" {
  source = "../prod"
  
  az = "eu-central-1b"
  environment_name = "Dev Environment"
}