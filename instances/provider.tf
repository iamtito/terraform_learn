terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }
    required_version = ">= 1.0.0"
}

provider "aws" {
    profile = "terraform_tutorial"
    region = "us-west-1"
}

terraform {
    backend "s3" {
        bucket = "terraform-tutorial-state-xyz"
        key = "terraform.state"
        region = "us-west-1"
        encrypt = "true"
        profile = "terraform_tutorial"
    }
}