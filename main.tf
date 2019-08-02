terraform {
  required_version = "~> 0.11.0"
  required_providers {
    aws = ">= 2.12.0"
  }
}

# Get object aws_vpc by vpc_id
data "aws_vpc" "default" {
  id = "${var.vpc_id}"
}

data "aws_availability_zones" "available" {}
