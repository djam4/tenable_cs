resource "aws_s3_bucket" "tenable_cs_demo_s3_bucket" {
  bucket = "tenablecss3bucket"
  acl    = "public-read"
  tags   = var.default_tags
}