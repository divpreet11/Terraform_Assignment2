# # Define a list of bucket names
# variable "bucket_names" {
#   default = ["divpreet-bucket-1", "divpreet-bucket-2", "divpreet-bucket-3"]
# }

# Define the number of buckets to create
variable "num_buckets" {
  default = 3
}

variable "num_buckets_for_for-each" {
  type = set(string)
  default = ["div-b-1", "div-b-2", "div-b-3", "div-b-4"]
}
