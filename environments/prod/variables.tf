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
  default     = "prod"
}

variable "project_name" {
  description = "Nom du projet"
  type        = string
  default     = "myprojectml"
}
# test deploy prod
# test deploy prod
# test deploy prod
# test deploy prod disable et  prot
# test deploy prod protection
# test deploy prod protection
# redeploy

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
# trigger
