variable "location" {
  description = "Azure Region"
  type        = string
}

variable "project_name" {
  description = "Nom du projet"
  type        = string
}

variable "environment" {
  description = "Environnement"
  type        = string
}

variable "resource_group_name" {
  description = "Nom du Resource Group"
  type        = string
}

variable "sql_admin_login" {
  description = "SQL Server admin login"
  type        = string
}

variable "sql_admin_password" {
  description = "SQL Server admin password"
  type        = string
  sensitive   = true
}
