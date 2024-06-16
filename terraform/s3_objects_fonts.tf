#  ** -- custom fonts and SVG files ****

resource "aws_s3_object" "intro-svg" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "intro.svg"
  source = "../web/intro.svg"
  etag   = filemd5("../web/intro.svg")
  content_type = "image/svg+xml"
}

resource "aws_s3_object" "Fonarto-XT" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "Fonarto-XT.ttf"
  source = "../web/Fonarto-XT.ttf"
  etag   = filemd5("../web/Fonarto-XT.ttf")
  content_type = "application/x-font-ttf"
}

resource "aws_s3_object" "Fonarto" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "Fonarto.ttf"
  source = "../web/Fonarto.ttf"
  etag   = filemd5("../web/Fonarto.ttf")
  content_type = "application/x-font-ttf"
}

resource "aws_s3_object" "NexaRustScriptL" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "NexaRustScriptL-0.otf"
  source = "../web/NexaRustScriptL-0.otf"
  etag   = filemd5("../web/NexaRustScriptL-0.otf")
  content_type = "font/otf"
}

resource "aws_s3_object" "Raleway-Regular" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "Raleway-Regular.ttf"
  source = "../web/Raleway-Regular.ttf"
  etag   = filemd5("../web/Raleway-Regular.ttf")
  content_type = "application/x-font-ttf"
}

resource "aws_s3_object" "Ubuntu-L" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "Ubuntu-L.ttf"
  source = "../web/Ubuntu-L.ttf"
  etag   = filemd5("../web/Ubuntu-L.ttf")
  content_type = "application/x-font-ttf"
}




