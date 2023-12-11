resource "aws_route53_record" "route-records" {
  zone_id = "Z0822301268JPSC1M6XE6"
  name    = var.fqdn
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = true
  }
}