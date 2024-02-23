provider "dockerhub" {
  username = DOCKER_HUB_USERNAME
  password = DOCKER_HUB_TOKEN
}

resource "dockerhub_repository" "project" {
  name        = "PRG301-blockchain"
  namespace   = "dennis647"
  description = "PRG301 Konteeksamen"
}
