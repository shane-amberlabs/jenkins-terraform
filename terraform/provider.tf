terraform {
  backend "s3" {
    bucket         = "saw554-tfstate-s3"
    key            = "saw554-tfstate-s3.tfstate"
    dynamodb_table = "saw554-tfstate-s3"
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