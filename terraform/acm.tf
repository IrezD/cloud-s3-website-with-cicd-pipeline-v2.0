provider "aws" {
  alias  = "acm"
  region = "us-east-1"
}

resource "aws_acm_certificate" "site-cert" {
  domain_name       = var.fqdn
  validation_method = "EMAIL"
  provider          = aws.acm
  tags = {
    Name = var.tag_name
  }
}
