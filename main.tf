provider "aws" {
  region = var.aws_region
}

resource "random_pet" "bucket_name" {
  length    = 2
  separator = "-"
}

resource "aws_s3" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "terraform-webinar-${random_pet.bucket_name.id}"
  region = var.aws_region

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
