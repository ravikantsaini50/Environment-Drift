module "network" {
  source = "./modules/network"

  name_prefix = var.name_prefix
  project_id  = var.project_id
  region      = var.region
  web_cidr    = var.web_cidr
  app_cidr    = var.app_cidr
  db_cidr     = var.db_cidr
}

module "iam" {
  source = "./modules/iam"

  name_prefix = var.name_prefix
  project_id  = var.project_id
}

module "compute" {
  source = "./modules/compute"

  name_prefix = var.name_prefix
  project_id  = var.project_id
  region      = var.region
  subnet_id   = module.network.app_subnet_id
  sa_email    = module.iam.app_sa_email
}

module "database" {
  source = "./modules/database"

  name_prefix = var.name_prefix
  database_name = var.db_name
  network_id  = module.network.network_id
  db_subnet_id = module.network.db_subnet_id
}

module "storage" {
  source = "./modules/storage"

  bucket_name = var.bucket_name
  project_id  = var.project_id
}
