provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "testanisble"
    key            = "tf/terraform1.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "terraform-locks"
  }
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet_id
  key_name               = var.key_name

  root_block_device {
    volume_size = var.disk_size
    volume_type = var.disk_type
  }

  tags = merge(
    var.tags
    )
}
