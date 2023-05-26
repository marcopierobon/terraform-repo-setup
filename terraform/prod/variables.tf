variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "availability_zone" {
  description = "The Availability Zone where resources will be created"
  default     = "us-west-2a"
}

variable "environment_name" {
  description = "The name of the environment (e.g., 'dev' or 'prod')"
  default     = "dev"
}

variable "team_name" {
  description = "The name of the team"
  default     = "PinkUnicorns"
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
