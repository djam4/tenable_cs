resource "aws_s3_bucket" "demo-s3-bucket" {
  bucket = "demo-s3"
  acl    = "public-read"
}
