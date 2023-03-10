output "bucket_arn" {
  description = "S3 Bucket ARN"
  value = module.s3_static_website.arn
}

output "bucket_name" {
  description = "S3 Bucket Name"
  value = module.s3_static_website.name
}

output "website_endpoint" {
  description = "Website URL"
  value = module.s3_static_website.website_endpoint
}