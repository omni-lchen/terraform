terraform {
  backend "s3" {
    bucket  = "longs-lab-tfstate"
    key     = "longs-lab"
    region  = "eu-west-1"
    profile = "default"
    encrypt = true
  }

  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.9.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "eu-west-1"
  profile = "default"
}
