resource "aws_dynamodb_table" "tfstate-dynamodb-table" {
  name         = "tfstate-portfolio-${var.env}"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = var.tag_name
  }
}