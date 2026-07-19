terraform {
  backend "s3" {
    bucket         = "dinesh-pandian-terraform-state-2026"
    key            = "production/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}