terraform {
  required_version = ">= 1.6.4"

  required_providers {
    dockerhub = {
      source  = "BarnabyShearer/dockerhub"
      version = ">= 0.0.15"
    }
  }
}

provider "dockerhub" {
  username = var.dockerhub_username
  password = var.dockerhub_password
}

resource "dockerhub_repository" "project" {
  name        = var.repository_name
  namespace   = var.dockerhub_username
  description = "PRG301 Konteeksamen"
}
