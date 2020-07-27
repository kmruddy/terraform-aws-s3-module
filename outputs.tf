output "s3_bucket_id" {
  description = "ID of the S3 Bucket"
  value       = module.aws_s3.id
}

output "s3_bucket_domain_name" {
  description = "Domain name of the S3 Bucket"
  value       = module.aws_s3.bucket_domain_name
}
