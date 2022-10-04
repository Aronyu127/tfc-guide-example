variable "environment" {
  description = "The environment name"
  type        = string
}

variable "psql_username" {
  description = "The username for the database"
  type        = string
}

variable "psql_password" {
  description = "The password for the database"
  type        = string
}

variable "rds_instance_type" {
  description = "The RDS instance type"
  type        = string
}