resource "aws_s3_bucket" "demo" {
  bucket = "vikas-terraform-demo-12345"
}

resource "aws_s3_bucket_versioning" "demo" {
  bucket = aws_s3_bucket.demo.id

  versioning_configuration {
    status = "Enabled"
  }
}
