resource "aws_s3_bucket" "site-bucket" {
  bucket = "${var.env}-portfolio-website-2.0"
}

resource "aws_s3_bucket_versioning" "bucket-versioning" {
  bucket = aws_s3_bucket.site-bucket.bucket
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.site-bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_website_configuration" "bucket-website-config" {
  bucket = aws_s3_bucket.site-bucket.id

  index_document {
    suffix = "index.html"
  }
}

#  ** -- HTML Pages file ***

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "index.html"
  source = "../web/index.html"
  etag   = filemd5("../web/index.html")
  content_type = "text/html"
}

resource "aws_s3_object" "devops" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "devops.html"
  source = "../web/devops.html"
  etag   = filemd5("../web/devops.html")
  content_type = "text/html"
}

resource "aws_s3_object" "cert" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "cert.html"
  source = "../web/cert.html"
  etag   = filemd5("../web/cert.html")
  content_type = "text/html"
}

resource "aws_s3_object" "wordpress" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "wordpress.html"
  source = "../web/wordpress.html"
  etag   = filemd5("../web/wordpress.html")
  content_type = "text/html"
}

#  ** -- css files ****

resource "aws_s3_object" "main-css" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "main.css"
  source = "../web/main.css"
  etag   = filemd5("../web/main.css")
  content_type = "text/css"
}

resource "aws_s3_object" "noscript-css" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "noscript.css"
  source = "../web/noscript.css"
  etag   = filemd5("../web/noscript.css")
  content_type = "text/css"
}





