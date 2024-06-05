terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.12.0"
    }
  }
}

provider "google" {
  credentials = "prismatic-grail-420403-8a51cb866470.json"
  project     = var.project
  region      = var.region
}

resource "google_storage_bucket" "reddit-project-bucket" {
  name          = "prismatic-grail-420403-reddit-project-bucket"
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "bq-reddit-dataset" {
  dataset_id = var.bq_dataset
  location = var.location
}