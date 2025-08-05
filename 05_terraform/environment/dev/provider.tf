terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.7.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.1.0"
    }
  }
}

provider "aws" {
  region = local.region
}