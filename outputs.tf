output "landing_bucket_name" {
  description = "Name of the landing ATTIS bucket"
  value       = google_storage_bucket.landing_attis.name
}

output "landing_bucket_url" {
  description = "GCS URI of the bucket"
  value       = "gs://${google_storage_bucket.landing_attis.name}"
}
