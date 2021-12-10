################ S3 bucket creation ##################

resource "aws_s3_bucket" "bucket" {
  bucket            = "s3-bucket-name"
  acl               = "public-read"
  website {

    index_document  = "index.html"
  }

  tags = {
    Name        = "${var.project}-bucket"
    Project     = "var.project"
  }
}

################## S3 files upload ####################

resource "aws_s3_bucket_object" "website-files" {
  
  for_each = module.template_files.files

  bucket          = aws_s3_bucket.bucket.id
  key             = each.key
  acl             = "public-read"
  content_type    = each.value.content_type
  source          = each.value.source_path
  content         = each.value.content
  etag            = each.value.digests.md5
}
output website {
    value = aws_s3_bucket.bucket.website_endpoint
}
