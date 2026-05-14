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

variable "subnet_id" {
  description = "ID du Subnet pour App Service"
  type        = string
}
