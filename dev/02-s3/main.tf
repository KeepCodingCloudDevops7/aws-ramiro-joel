module "s3_static_website" {
  source = "../../modules/aws/s3"

  bucket = var.s3_static_website
}
