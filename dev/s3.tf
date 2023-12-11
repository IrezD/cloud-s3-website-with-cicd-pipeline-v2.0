resource "aws_s3_bucket" "site-bucket" {
  bucket = "${var.env}-portfolio-website-2.0"

  tags = {
    Environment = var.tag_name
  }
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

#  ** -- Index html file ***

resource "aws_s3_object" "profile-object" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "profile_photo"
  source = "../web/pic00.jpg"
  etag   = filemd5("../web/pic001.jpg")
}