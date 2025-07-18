provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = file("startup.sh")

  tags = {
    Name = "TP1-EC2"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"
  tags = {
    Name        = "TP1S3"
    Environment = "Dev"
  }
}
