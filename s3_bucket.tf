resource "aws_s3_bucket" "tenable_cs_demo_s3_bucket" {
  bucket = "demo-s3"
  acl    = "public-read"
  tags   = "Terraform-Created"
}
