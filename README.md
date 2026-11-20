# Project 18 - GitOps Infra Deployment

This project demonstrates infrastructure deployment using GitHub Actions and Terraform.

## Workflow

Infrastructure changes are triggered when changes are merged into the main branch.

The workflow performs:

1. Terraform initialization
2. Terraform formatting validation
3. Terraform validation
4. Terraform plan
5. Approval through the `niranjan-production` environment
6. Terraform apply

## Approval

The Terraform apply job is protected by the GitHub environment:

`niranjan-production`

The infrastructure deployment therefore requires approval before Terraform Apply is executed.
