resource "aws_s3_bucket_policy" "site-bucket-policy" {
  bucket = aws_s3_bucket.site-bucket.id
  policy = data.aws_iam_policy_document.site-iam-policy.json
}

data "aws_iam_policy_document" "site-iam-policy" {
statement {
  sid       = "Allowing Cloudfront to access S3 Bucket"
  principals {
    type = "Service"
    identifiers = ["cloudfront.amazonaws.com"]
  }
  effect    = "Allow"
  actions   = ["s3:GetObject", "s3:ListBucket"]
  resources = [aws_s3_bucket.site-bucket.arn, "${aws_s3_bucket.site-bucket.arn}/*"]
  
  condition {
      test = "StringEquals"
      variable = "AWS:SourceArn"
      values = [aws_cloudfront_distribution.s3_distribution.arn]
    }
}
}
