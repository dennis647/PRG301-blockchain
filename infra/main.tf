provider "dockerhub" {}

resource "dockerhub_repository" "project" {
  name        = "PRG301-blockchain"
  namespace   = "dennis647"
  description = "PRG301 Konteeksamen"
}
