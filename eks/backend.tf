terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "demo-terraform-eks-state-s3-bucket-bharath"
    region         = "eu-west-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "terraform-eks-state-locks-bharath"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
