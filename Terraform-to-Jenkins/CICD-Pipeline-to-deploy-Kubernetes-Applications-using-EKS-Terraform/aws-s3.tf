/*... Creating random id to give unique name to s3 bucket ... */

resource "random_id" "unique_name" {

  byte_length = 16

}

/* ....S3 Bucket.......*/

resource "aws_s3_bucket" "my_new_S3_bucket" {

  bucket = "${var.aws_s3_bucket_name}-${random_id.unique_name.hex}"

}

resource "aws_s3_bucket_ownership_controls" "my_new_S3_bucket" {
  bucket = aws_s3_bucket.my_new_S3_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "my_new_bucket_acl" {
  depends_on = [
    aws_s3_bucket_ownership_controls.my_new_S3_bucket
  ]
  bucket = aws_s3_bucket.my_new_S3_bucket.id
  acl    = "private"

}
