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

#  ** -- Index html file ***

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "index.html"
  source = "../web/index.html"
  etag   = filemd5("../web/index.html")
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

#  ** -- image object ****

resource "aws_s3_object" "photo" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "pic01-vintage2.jpg"
  source = "../web/pic01-vintage2.jpg"
  etag   = filemd5("../web/pic01-vintage2.jpg")
  content_type = "application/javascript"
}

#  ** -- js files ****

resource "aws_s3_object" "main-js" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "main.js"
  source = "../web/main.js"
  etag   = filemd5("../web/main.js")
  content_type = "application/javascript"
}

resource "aws_s3_object" "breakpoints-min-js" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "breakpoints.min.js"
  source = "../web/breakpoints.min.js"
  etag   = filemd5("../web/breakpoints.min.js")
  content_type = "application/javascript"
}

resource "aws_s3_object" "browser-min-js" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "browser.min.js"
  source = "../web/browser.min.js"
  etag   = filemd5("../web/browser.min.js")
  content_type = "application/javascript"
}

resource "aws_s3_object" "jquery-min-js" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "jquery.min.js"
  source = "../web/jquery.min.js"
  etag   = filemd5("../web/jquery.min.js")
  content_type = "application/javascript"
}

resource "aws_s3_object" "jquery-scrollex-min-js" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "jquery.scrollex.min.js"
  source = "../web/jquery.scrollex.min.js"
  etag   = filemd5("../web/jquery.scrollex.min.js")
  content_type = "application/javascript"
}

resource "aws_s3_object" "jquery-scrolly-min-js" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "jquery.scrolly.min.js"
  source = "../web/jquery.scrolly.min.js"
  etag   = filemd5("../web/jquery.scrolly.min.js")
  content_type = "application/javascript"
}

resource "aws_s3_object" "util-js" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "util.js"
  source = "../web/util.js"
  etag   = filemd5("../web/util.js")
  content_type = "application/javascript"
}



