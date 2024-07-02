# Deploy gcs bucket using terraform cloud

provider "google" {
  project = "hidden-cosmos-428006-c1"
  region  = "us-central1"
  zone    = "us-central1-b"
}

resource "google_storage_bucket" "bucket" {
  name     = "daslearning"
  location = "ASIA-SOUTH1"
}
