terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "niranjan_gitops_bucket" {
  bucket = "niranjan-gitops-project-18-2026"

  force_destroy = true

  tags = {
    Project = "Project-18"
    Owner   = "Niranjan"
    Purpose = "GitOps Infra Deployment - Niranjan"
  }
}
