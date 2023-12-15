# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.70"
      version = ">= 4.65"
     }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      #version = "~> 2.7.1"
      version = ">= 2.20"
    }     
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-on"
    key    = "dev/ebs-sampleapp-demo/terraform.tfstate"
    region = "ap-southeast-1" 

    # For State Locking
    dynamodb_table = "dev-ebs-sampleapp-demo"    
  }    
}

