terraform {
  backend "s3" {
    bucket = "watermelon392"
    key    = "myterraform.tfstate"
    region = "us-east-1"
  }
}