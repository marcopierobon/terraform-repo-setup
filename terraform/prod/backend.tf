terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-tf-setup"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}