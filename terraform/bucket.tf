resource "aws_s3_bucket" "raw-bucket" {
    bucket = "raw-dataplatform"
    force_destroy = true #if exists, delete

    # set tags to easily track your infrastructure
    tags = {
        Bucket_Name = "bucket-terraform"
        environment = "dev"
    }
}