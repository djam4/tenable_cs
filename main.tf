terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.47"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "dj-test"
    workspaces {
      name = "StateSpace"
}
  }
}
provider "aws" {
  region = "us-west-2"
}