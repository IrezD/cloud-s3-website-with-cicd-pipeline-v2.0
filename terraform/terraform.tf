terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region = var.default_region

  default_tags {
    tags = {
      Environment = "${title(var.env)} Environment"
    }
  }
}

provider "aws" {
  alias  = "acm"
  region = var.acm_region

  default_tags {
    tags = {
      Environment = "${title(var.env)} Environment"
    }
  }
}
