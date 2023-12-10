resource "aws_s3_bucket" "site-bucket" {
  bucket = "${var.env}-portfolio-website"

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

resource "aws_s3_bucket_acl" "site-bucket-acl" {
  bucket = aws_s3_bucket.site-bucket.bucket
  acl    = "public-read"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.site-bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.site-bucket.bucket

  index_document {
    suffix = "../web/index.html"
  }
}

resource "aws_s3_object" "object" {
  bucket     = aws_s3_bucket.site-bucket.bucket
  key        = "index.html"
  source     = "../web/index.html"
  etag       = filemd5("../web/index.html")
}