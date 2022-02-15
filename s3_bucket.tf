resource "aws_s3_bucket" "tenable_cs_demo_s3_bucket" {
  bucket = "tenables3bucket"
  acl    = "public-read"
  tags   = var.default_tags
}
# Modified S3 Bucket Name