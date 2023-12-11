resource "aws_acm_certificate" "site-cert" {
  domain_name       = var.fqdn
  validation_method = "EMAIL"
  provider = aws.us-east-1
  tags = {
    Name = var.tag_name
  }
}