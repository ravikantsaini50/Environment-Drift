resource "null_resource" "app_instance" {
  triggers = {
    name       = "${var.name_prefix}-app"
    project_id = var.project_id
    region     = var.region
    subnet_id  = var.subnet_id
    sa_email   = var.sa_email
  }
}
