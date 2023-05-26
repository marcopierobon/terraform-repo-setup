terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-tf-setup"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
