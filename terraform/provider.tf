terraform {
  backend "s3" {
    bucket         = "jenkins-terraform-saw554"
    key            = "jenkins-terraform-saw554.tfstate"
    dynamodb_table = "jenkins-terraform-saw554"
    encrypt        = true
    region         = "us-east-1"
  }

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~>2.1.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~>3.1.0"
    }
  }
}