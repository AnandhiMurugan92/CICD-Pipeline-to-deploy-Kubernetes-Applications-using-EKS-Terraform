variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}
variable "avail_zone" {}
variable "env_prefix" {}
variable "instance_type" {}
variable "aws_s3_bucket_name" {

  default = "app-storage"
}
