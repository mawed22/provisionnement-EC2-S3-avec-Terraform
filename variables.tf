variable "aws_region" {
  default = "eu-west-3"
}

variable "ami_id" {
  default = "ami-0c2b8ca1dad447f8a"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "TP1 META - EC2"
  default     = "id_rsa_TP1"
}

variable "bucket_name" {
  default = "TP1-demo-bucket-2024"
}
