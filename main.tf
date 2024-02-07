resource "aws_s3_bucket" "s3_bucket_1" {
  bucket = "divpreet123"


  tags = {
    Name        = "My bucket"
    Environment = "Dev"
   
  }
}


# list
# resource "aws_s3_bucket" "divpreet_buckets" {
#   count         = length(var.bucket_names)
#   bucket        = var.bucket_names[count.index]
#   force_destroy = true       # Set to true to allow Terraform to destroy the bucket
# }



# Create S3 buckets====count
# resource "aws_s3_bucket" "b-4321" {
#   count         = var.num_buckets
#   bucket        = "b-4321-${count.index + 1}"
#   force_destroy = true       # Set to true to allow Terraform to destroy the bucket

#   tags = {
#     Name        = "b-4321-${count.index + 1}"
#     Environment = "Production"  # Adjust as needed
#   }
# }

#for_each using Map
resource "aws_s3_bucket" "the-accounts" {
  for_each = var.num_buckets_for_for-each
  bucket     = each.value
}

