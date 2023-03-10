resource "aws_s3_bucket" "this" {
  bucket = var.bucket
}

resource "aws_s3_bucket_public_access_block" "website_access" {
  bucket = aws_s3_bucket.this.id

  ignore_public_acls      = false
  restrict_public_buckets = false
  block_public_acls       = false
  block_public_policy     = false
}

resource "aws_s3_bucket_website_configuration" "webconfig" {
  bucket = aws_s3_bucket.this.id

  index_document {
    suffix = "index.html"
  }

}
resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "index.html"
  source       = "../02-s3/index.html"
  content_type = "text/html"
  etag         = filemd5("../02-s3/index.html")
  acl          = "public-read"
}

resource "aws_s3_object" "error" {
  bucket      = aws_s3_bucket.this.bucket
  key         = "error.html"
  source      = "../02-s3/error.html"
  source_hash = filemd5("../02-s3/error.html")

  content_type = "text/html"
}