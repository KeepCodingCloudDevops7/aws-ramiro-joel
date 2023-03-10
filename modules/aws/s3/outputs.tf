output "arn" {
  description = "Bucket ARN"
  value       = aws_s3_bucket.this.arn
}

output "name" {
  description = "Bucket Name"
  value       = aws_s3_bucket.this.bucket
}

output "website_endpoint" {
  description = "Website URL"
  value       = aws_s3_bucket_website_configuration.webconfig.website_endpoint
}  