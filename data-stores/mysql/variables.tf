variable "db_username" {
  description = "The username for the database"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "db_prefix" {
  description = "The identifier prefix for the database"
  type = string
}

variable "db_name" {
  description = "The name for the database"
  type = string
}

variable "allocated_storage" {
  description = "How much storage should be allocated for the database, in GB"
  type = number
}

variable "instance_class" {
  description = "The instance class that should be used for the database server"
  type = string
}