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
  region = "us-east-2"
}
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "Changed2-ExampleAppServerInstance"
  }
}