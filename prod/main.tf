provider "aws" {
  region = "eu-central-1"
}


module "dev" {
  source = "../dev"
  
  az = "eu-central-1b"
  environment_name = "Dev Staging Environment"
}