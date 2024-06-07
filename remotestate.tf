terraform {
  backend "s3" {
    bucket = "watermelon392"
    key    = "myterraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "terraform-lock-terraform"
    #encrypt        = true
  }
}