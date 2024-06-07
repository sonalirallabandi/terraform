resource "aws_s3_bucket" "bucket" {
  bucket = "terraformcreatedbuckett"

  tags = {
    Name        = "terraformcreatedbuckett"
    Environment = "Dev"
  }
}