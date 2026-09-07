variable "project_id" {
  description = "Logical project identifier used by the local validation model."
  type        = string
  default     = "cloudnotes-local"
}

variable "region" {
  description = "Deployment region for the CloudNotes system."
  type        = string
  default     = "local"
}

variable "name_prefix" {
  description = "Prefix applied to every modeled resource."
  type        = string
  default     = "cloudnotes"
}

variable "web_cidr" {
  description = "CIDR range for the web subnet."
  type        = string
  default     = "10.10.1.0/24"
}

variable "app_cidr" {
  description = "CIDR range for the application subnet."
  type        = string
  default     = "10.10.2.0/24"
}

variable "db_cidr" {
  description = "CIDR range for the database subnet."
  type        = string
  default     = "10.10.3.0/24"
}

variable "bucket_name" {
  description = "Logical asset bucket name used by the local validation model."
  type        = string
  default     = "cloudnotes-assets-local"
}

variable "db_name" {
  description = "Logical database name used by the local validation model."
  type        = string
  default     = "cloudnotes"
}
