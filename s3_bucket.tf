resource "aws_s3_bucket" "demo-s3-bucket224420" {
  bucket = "demo-s3224420"
  acl    = "private"

  versioning {
    enabled = true
  }
}
#Added a comment
