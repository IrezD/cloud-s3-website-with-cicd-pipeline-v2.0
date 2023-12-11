provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {}
}

module "dev" {
  source = "../dev"

  tag_name = "Live Production"
  env      = "prod"
  fqdn     = "denniowie.com"
}