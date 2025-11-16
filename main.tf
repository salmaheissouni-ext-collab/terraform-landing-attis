provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "landing_attis" {
  name                        = var.bucket_name
  location                    = var.region
  force_destroy                = false
  uniform_bucket_level_access  = true
  public_access_prevention      = "enforced"

  versioning {
    enabled = true
  }

  labels = {
    environment   = var.environment
    managed_by    = "terraform"
    project       = var.project_id
    sensitive     = "true"
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 7
    }
  }

  storage_class = "STANDARD"
}
