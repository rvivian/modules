variable "name" {
  description = "The name to use for all resources created by this module"
  type        = string
}

variable "image" {
  description = "The Docker image to run"
  type        = string
}

variable "container_port" {
  description = "The port the docker image listens on"
  type        = number
}

variable "replicas" {
  description = "How may replicas to run"
  type        = number
}

variable "environmental_variables" {
  description = "Environmental variables to set for the app"
  type        = map(string)
  default     = {}
}