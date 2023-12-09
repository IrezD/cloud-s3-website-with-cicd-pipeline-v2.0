provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {}
}

module "dev" {
  source = "../dev"

  az       = "eu-central-1b"
  tag_name = "Live Production"
  env      = "prod"
}