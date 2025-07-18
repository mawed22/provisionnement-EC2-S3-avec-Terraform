output "public_ip" {
  value = aws_instance.web.public_ip
}

output "s3_bucket_id" {
  value = aws_s3_bucket.bucket.id
}
