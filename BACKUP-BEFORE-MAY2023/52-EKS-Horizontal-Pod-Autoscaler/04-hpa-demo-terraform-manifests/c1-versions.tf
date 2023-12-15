# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.4"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.7"
    }    
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-on"
    key    = "dev/hpa-demo-app/terraform.tfstate"
    region = "ap-southeast-1" 

    # For State Locking
    dynamodb_table = "dev-hpa-demo-app"    
  }    
}
