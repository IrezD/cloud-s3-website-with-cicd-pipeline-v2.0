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