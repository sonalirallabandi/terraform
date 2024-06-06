resource "aws_dynamodb_table" "dynamodb-terraform-lock" {
  name         = "terraform-lock-terraform"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}