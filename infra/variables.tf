variable "dockerhub_username" {
  description = "Your Docker Hub username"
  type        = string
}

variable "dockerhub_password" {
  description = "Your Docker Hub password or token"
  type        = string
}

variable "repository_name" {
  description = "The name of the Docker Hub repository"
  type        = string
  default     = "nbx"
}
