terraform {
  backend "s3" {
    bucket="tusharrgtestbucket"
    key="tfstate/terraform.tfstate"
    region="us-east-1"
    
  }
}