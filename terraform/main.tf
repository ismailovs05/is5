terraform {
  required_version = "~> 1.6.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.30.0"  # Replace with your desired version constraint
    }
    ## ..
    }
  }

  provider "aws" {
    region = "us-east-2"  # Set your desired AWS region
    profile = "default"
}

terraform {
  backend "s3" {
    bucket = "glue-data-uploads"
    key    = "terraform/terraform.tfstate"
    region = "us-east-2"
    profile = "default"
  }
}