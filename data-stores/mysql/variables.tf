variable "db_password" {
  description = "The password for the database"
  type        = string
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

variable "skip_final_snapshot" {
  description = "Should be turned off for testing to facilitate quicker removal of the DB during deletion"
  type = bool
  default = false
}