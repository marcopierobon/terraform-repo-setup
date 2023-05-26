provider "aws" {
  region = var.region
}

data "aws_ami" "ubuntu_latest" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 2.0"

  bucket = var.s3_bucket_name
  tags          = local.common_tags
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name          = var.ec2_instance_name
  instance_type = var.ec2_instance_type
  ami           = data.aws_ami.ubuntu_latest.id
  tags          = local.common_tags
}



resource "aws_ssm_parameter" "db_name" {
  name  = var.parameter_store_db_name
  type  = "String"
  value = var.db_name
  tags   = local.common_tags
}

resource "aws_ssm_parameter" "db_user" {
  name  = var.parameter_store_db_user
  type  = "String"
  value = var.db_user
  tags          = local.common_tags
}