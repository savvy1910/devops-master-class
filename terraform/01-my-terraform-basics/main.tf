terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.46"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


#plan - ececite
resource "aws_s3_bucket" "my_s3_bucket"{
    bucket = "my-s3-bucket-divy-123456"
    versioning{
        enabled = true
    }
}

resource "aws_iam_user" "my_iam_user"{
    name = "my_iam_user_123_updated"
} 

