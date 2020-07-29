terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "devops-training"

    workspaces {
      name = "test-rob"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = "${var.region}-b"
}