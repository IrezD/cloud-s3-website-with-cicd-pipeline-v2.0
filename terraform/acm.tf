resource "aws_acm_certificate" "site-cert" {
  domain_name       = var.fqdn
  validation_method = "EMAIL"
  provider          = aws.acm
}
