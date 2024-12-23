#  ** -- images ****

resource "aws_s3_object" "photo" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "pic01-vintage2.jpg"
  source = "../web/pic01-vintage2.jpg"
  etag   = filemd5("../web/pic01-vintage2.jpg")
  content_type = "image/jpeg"
}

resource "aws_s3_object" "favicon" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "favicon.ico"
  source = "../web/favicon.ico"
  etag   = filemd5("../web/favicon.ico")
  content_type = "image/vnd.microsoft.icon"
}


resource "aws_s3_object" "argocd" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "argocd.png"
  source = "../web/argocd.png"
  etag   = filemd5("../web/argocd.png")
  content_type = "image/png"
}


resource "aws_s3_object" "fhs-banner" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "fhs-banner.png"
  source = "../web/fhs-banner.png"
  etag   = filemd5("../web/fhs-banner.png")
  content_type = "image/png"
}


resource "aws_s3_object" "flaskapp-with-numbersapi" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "flaskapp-with-numbersapi.png"
  source = "../web/flaskapp-with-numbersapi.png"
  etag   = filemd5("../web/flaskapp-with-numbersapi.png")
  content_type = "image/png"
}


resource "aws_s3_object" "jenkins-gitlab" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "jenkins-gitlab.png"
  source = "../web/jenkins-gitlab.png"
  etag   = filemd5("../web/jenkins-gitlab.png")
  content_type = "image/png"
}

resource "aws_s3_object" "s3-pipeline" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "s3-pipeline.png"
  source = "../web/s3-pipeline.png"
  etag   = filemd5("../web/s3-pipeline.png")
  content_type = "image/png"
}

resource "aws_s3_object" "vees-banner" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "vees-banner.png"
  source = "../web/vees-banner.png"
  etag   = filemd5("../web/vees-banner.png")
  content_type = "image/png"
}

resource "aws_s3_object" "py-numbersapi" {
  bucket = aws_s3_bucket.site-bucket.bucket
  key    = "py-numbersapi.png"
  source = "../web/py-numbersapi.png"
  etag   = filemd5("../web/py-numbersapi.png")
  content_type = "image/png"
}