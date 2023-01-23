variable "server_port" {
  description = "The port the server will user for HTTP requests"
  type        = number
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type        = string
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EX2 Intances in the ASG"
}

variable "custom_tags" {
  description = "Custom tags to set ont he Instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "ami" {
  description = "The AMI to run in the cluster"
  default = "ami-095413544ce52437d"
  type = string
}

variable "server_text" {
  description = "The text the web server should return"
  default = "Hello, World"
  type = string
}