provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "837c74d0-c4cb-4e68-ae38-f111b11c8e27"
    git_commit           = "98e0e15f9f647a0abea0a147fea29b563451219b"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 23:47:34"
    git_last_modified_by = "139264573+chukbee1969@users.noreply.github.com"
    git_modifiers        = "139264573+chukbee1969"
    git_org              = "chukbee1969"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
