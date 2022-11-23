terraform {
  backend "s3" {
    bucket         = "jenkins-tf-tfstate-s3"
    key            = "jenkins-tf-tfstate-s3.tfstate"
    dynamodb_table = "jenkins-tf-dynamodb"
    encrypt        = true
    region         = "us-east-2"
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