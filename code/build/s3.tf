provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "5cb92278-106c-4ac4-a5a3-0cdedb6ca07e"
    git_commit           = "183a3a8716619c42f1d3b7de363e31e1a8e9170c"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-11 16:31:15"
    git_last_modified_by = "119448711+itb000@users.noreply.github.com"
    git_modifiers        = "119448711+itb000"
    git_org              = "itb000"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
