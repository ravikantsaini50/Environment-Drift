output "bucket_name" {
  value = var.bucket_name
}

output "bucket_id" {
  value = null_resource.bucket.id
}
