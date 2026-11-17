output "email" {
  description = "Email address of the service account"
  value       = google_service_account.this.email
}

output "name" {
  description = "Full resource name of the service account"
  value       = google_service_account.this.name
}
