resource "null_resource" "database" {
  triggers = {
    name         = "${var.name_prefix}-database"
    database     = var.database_name
    network_id   = var.network_id
    db_subnet_id = var.db_subnet_id
  }
}
