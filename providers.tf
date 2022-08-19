#v1.1.7
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"

    }
  }

  #Terraform Cloud State file
  cloud {
    organization = "betterthanbot"

    workspaces {
      name = "aws-terraform"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}