terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  backend "s3" {
    bucket         = "terraformstatefileharunfeb112025"  # Replace with your S3 bucket name
    key            = "terraform.tfstate"          # State file location within the bucket
    region         = "var.region"                  # AWS region
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region
}