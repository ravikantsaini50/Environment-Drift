output "network_id" {
  description = "Modeled CloudNotes network identifier."
  value       = module.network.network_id
}

output "app_subnet_id" {
  description = "Modeled application subnet consumed by compute."
  value       = module.network.app_subnet_id
}

output "app_instance_id" {
  description = "Modeled application instance identifier."
  value       = module.compute.instance_id
}

output "app_service_account" {
  description = "Application service account exposed by the IAM module."
  value       = module.iam.app_sa_email
}

output "database_name" {
  description = "Modeled database name."
  value       = module.database.database_name
}

output "bucket_name" {
  description = "Modeled asset bucket name."
  value       = module.storage.bucket_name
}
