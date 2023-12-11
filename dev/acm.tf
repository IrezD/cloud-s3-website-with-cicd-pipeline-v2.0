resource "aws_acm_certificate" "site-cert" {
  domain_name       = var.fqdn
  validation_method = "EMAIL"
  tags = {
    Name = var.tag_name
  }
}

provider "aws" {
  region = "us-east-1"
}