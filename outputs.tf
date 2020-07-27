output "s3_bucket_id" {
  description = "ID of the S3 Bucket"
  value       = aws_s3_bucket.random_bucket.id
}

output "s3_bucket_domain_name" {
  description = "Domain name of the S3 Bucket"
  value       = aws_s3_bucket.random_bucket.bucket_domain_name
}
