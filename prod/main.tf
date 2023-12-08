provider "aws" {
  region = "eu-central-1"
}


module "dev" {
  source = "../dev"

  az       = "eu-central-1b"
  tag_name = "Production"
  env      = "prod"
}