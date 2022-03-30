resource "aws_s3_bucket" "demo-s3-bucket224420" {
  bucket = "demo-s3224420x"
  acl    = "private"
}
#Added a comment

resource "aws_s3_bucket_policy" "demo-s3-bucket224420Policy" {
  bucket = "${aws_s3_bucket.demo-s3-bucket224420.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "demo-s3-bucket224420-restrict-access-to-users-or-roles",
      "Effect": "Allow",
      "Principal": [
        {
          "AWS": [
            <aws_policy_role_arn>
          ]
        }
      ],
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.demo-s3-bucket224420.id}/*"
    }
  ]
}
POLICY
}