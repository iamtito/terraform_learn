provider "aws" {
  # profile = "terraform_tutorial" 
  region  = "us-west-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 1.0.0"
}

terraform {
  backend "s3" {
    bucket  = "terraform-tutorial-state-xyz"
    key     = "testApp/terraform.state"
    region  = "us-west-1"
    encrypt = "true"
    profile = "default"
    # profile = "terraform_tutorial" 
  }
}

module "testapp" {
  source        = "../../global_modules/ec2/"
  for_each      = var.app
  instance_type = each.value.instance_type
  enable_eip    = each.value.enable_eip
  tags          = each.value.tags
}
