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
  username = DOCKER_HUB_USERNAME
  password = DOCKER_HUB_USERNAME
}

resource "dockerhub_repository" "project" {
  name        = "PRG301-blockchain"
  namespace   = "dennis647" // Endre til ditt dockerhub brukernavn
  description = "PRG301 Konteeksamen"
}
