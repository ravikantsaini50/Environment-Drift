resource "null_resource" "network" {
  triggers = {
    name       = "${var.name_prefix}-network"
    project_id = var.project_id
    region     = var.region
  }
}

resource "null_resource" "web_subnet" {
  triggers = {
    network_id = null_resource.network.id
    cidr       = var.web_cidr
    name       = "${var.name_prefix}-web"
  }
}

resource "null_resource" "app_subnet" {
  triggers = {
    network_id = null_resource.network.id
    cidr       = var.app_cidr
    name       = "${var.name_prefix}-app"
  }
}

resource "null_resource" "db_subnet" {
  triggers = {
    network_id = null_resource.network.id
    cidr       = var.db_cidr
    name       = "${var.name_prefix}-db"
  }
}

resource "null_resource" "firewall" {
  triggers = {
    network_id = null_resource.network.id
    name       = "${var.name_prefix}-firewall"
  }
}
