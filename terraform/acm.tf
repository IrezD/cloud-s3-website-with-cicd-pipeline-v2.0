data "aws_acm_certificate" "site-cert" {
  domain      = var.fqdn
  statuses = ["ISSUED"]
  provider = aws.acm
}
