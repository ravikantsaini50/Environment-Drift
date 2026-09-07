output "app_sa_email" {
  value = "${var.name_prefix}-app@${var.project_id}.iam.example"
}

output "service_account_id" {
  value = null_resource.app_service_account.id
}
