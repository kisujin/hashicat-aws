terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0" 
    }
  }
  required_version = ">= 1.0"
}

# Default Provider
provider "aws" {
  region  = "ap-northeast-2"
  allowed_account_ids = [
    "125120394697"
  ]
}
