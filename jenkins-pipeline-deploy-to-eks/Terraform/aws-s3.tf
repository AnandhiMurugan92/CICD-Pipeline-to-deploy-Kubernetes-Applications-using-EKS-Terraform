terraform {
  backend "s3" {
    bucket = "mylearning-app"
    region = "ap-south-1a"
    key    = "eks/terraform.tfstate"
  }
}
