variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "France Central"
}

variable "environment" {
  description = "Environnement"
  type        = string
  default     = "staging"
}

variable "project_name" {
  description = "Nom du projet"
  type        = string
  default     = "myprojectml"
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

variable "enable_sql" {
  description = "Activer le module SQL"
  type        = bool
  default     = true
}
