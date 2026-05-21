# Replace this stub during seed issue #3.
# Recommended: S3 + DynamoDB lock, or HCP Terraform.
#
# terraform {
#   backend "s3" {
#     bucket         = "REPLACE-ME-tfstate"
#     key            = "go-tf-app-template/prod/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "REPLACE-ME-tflock"
#     encrypt        = true
#   }
# }
