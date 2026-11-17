# Project-level permissions
resource "google_project_iam_member" "project" {
  for_each = var.project_grants

  project = var.project_id
  role    = each.value.role
  member  = each.value.member
}

# Bucket-level permissions
resource "google_storage_bucket_iam_member" "bucket" {
  for_each = var.bucket_grants

  bucket = each.value.bucket
  role   = each.value.role
  member = each.value.member
}

# Service-account-level permissions
resource "google_service_account_iam_member" "service_account" {
  for_each = var.service_account_grants

  service_account_id = each.value.service_account_id
  role               = each.value.role
  member             = each.value.member
}
