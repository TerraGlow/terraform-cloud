# Deploy gcs bucket using terraform cloud

provider "google" {
  project      = "hidden-cosmos-428006-c1"
}

module "project" {
  source  = "app.terraform.io/Tanjiro/project/gcp"
  version = "0.0.1"
  # insert required variables here
  bucket_name = "daslearning-m-bt"
  location    = "asia-south1"
}


output "bucket_id" {
  value = module.dl-bucket.bucket_id
}

output "bucket_id2" {
  value = module.dl-bucket2.bucket_id
}
