resource "null_resource" "app_service_account" {
  triggers = {
    name       = "${var.name_prefix}-app"
    project_id = var.project_id
  }
}

resource "null_resource" "storage_reader_role" {
  triggers = {
    service_account_id = null_resource.app_service_account.id
    role               = "storage.objectViewer"
  }
}

resource "null_resource" "database_client_role" {
  triggers = {
    service_account_id = null_resource.app_service_account.id
    role               = "cloudsql.client"
  }
}
