provider "aws" {
  region = "us-east-1"
}

## To only create ECR Repository

resource "aws_ecr_repository" "main" {
  name = "vayana-test"
}

output "repository_url" {
    value = aws_ecr_repository.main.repository_url
}