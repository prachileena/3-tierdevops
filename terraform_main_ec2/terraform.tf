terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "mybucketawsi"
    key    = "ec2/terraform.tfstate"
    region = "ap-south-1"
  }

  required_version = ">= 1.6.3"
}
provider "aws" {
  region = "ap-south-1"
}
