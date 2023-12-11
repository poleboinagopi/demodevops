terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.29.0"
    }
  }

  backend "s3" {
    bucket         = "newbucketbyusinglocksystem"
    key            = "workspace/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-file"
  }
}

provider "aws" {
  # Configuration options
  profile = "terraform"
}