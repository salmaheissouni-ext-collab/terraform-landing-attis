variable "project_id" {
  type        = string
  description = "GCP project ID"
  default     = "lec-ker-lakehouse-test"
}

variable "region" {
  type        = string
  description = "Region of the bucket"
  default     = "europe-west9"   # Paris
}

variable "bucket_name" {
  type        = string
  description = "Name of the landing bucket for ATTIS"
  default     = "lec-ker-test-landing-attis"
}

variable "environment" {
  type        = string
  description = "Environment label"
  default     = "dev"
}
