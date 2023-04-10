resource "aws_s3_bucket" "raw-bucket" {
    bucket = "raw-dataplatform"
    force_destroy = true #if exists, delete

    # set tags to easily track your infrastructure
    tags = {
        Bucket_Name = "bucket-terraform"
        environment = "dev"
    }
}

# setting the bucket to private
resource "aws_s3_bucket" "block_public_1" {
    bucket = aws_s3_bucket.raw-bucket.id

    block_public_acls = true
    block_pulic_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
}