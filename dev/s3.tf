# resource "aws_s3_bucket" "terraform-state" {
#   bucket = "${var.env}-tfstate-portfolio-site"
# }

# resource "aws_s3_bucket_versioning" "tfstate-bucket-versioning" {
#   bucket = aws_s3_bucket.terraform-state.bucket
#   versioning_configuration {
#     status = "Enabled"
#   }
# }