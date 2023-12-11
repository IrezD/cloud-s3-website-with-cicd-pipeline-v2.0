import {
  to = aws_acm_certificate.site-cert
  id = "arn:aws:acm:us-east-1:806066816337:certificate/06323327-39e1-485a-9cc8-47221a2f4dc6"
}

resource "aws_acm_certificate" "site-cert" {
    domain_name = var.fqdn

    tags = {
        Name = var.tag_name
    }
}