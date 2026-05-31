terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Environment = "dev"
    Project     = "cost-attribution"
    Owner       = "jayashree"
    ManagedBy   = "Terraform"
  }
}
