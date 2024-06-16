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
