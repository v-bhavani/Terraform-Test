provider "aws" {
  region = "us-east-1"  # Adjust with your desired AWS region
}

terraform {
  backend "s3" {
    bucket         = "testanisble"
    key            = "tf/terraform.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "terraform-locks"
  }
}

resource "aws_ebs_volume" "example_volume" {
  availability_zone = var.availability_zone
  size              = var.disk_size_gb
  type              = var.disk_type

  tags = {
    Name = var.tag  # Corrected to use var.tag instead of "var.tag"
  }
}
