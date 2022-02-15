resource "aws_s3_bucket" "tenable_cs_demo_s3_bucket2" {
  bucket = "tenables3bucket2"
  acl    = "public-read"
  tags   = var.default_tags
}
# Modified S3 Bucket Name2