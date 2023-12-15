# Terraform Remote State Datasource - Remote Backend AWS S3
# EKS Cluster Project
data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "terraform-on"
    key    = "dev/eks-cluster/terraform.tfstate"
    region = "ap-southeast-1" 
  }
}
