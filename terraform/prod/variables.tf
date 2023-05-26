variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "availability_zone" {
  description = "The Availability Zone where resources will be created"
  default     = "us-west-2a"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
}

variable "ec2_instance_name" {
  description = "Name of the EC2 instance"
}

variable "ec2_instance_type" {
  description = "Instance type of the EC2 instance"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
}

variable "parameter_store_db_name" {
  description = "The name of the parameter store for the DB name"
}

variable "parameter_store_db_user" {
  description = "The name of the parameter store for the DB user"
}

variable "db_name" {
  description = "The name of the database"
}

variable "db_user" {
  description = "The username for the database"
}