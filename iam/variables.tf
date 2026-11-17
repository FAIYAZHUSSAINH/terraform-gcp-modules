variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "project_grants" {
  description = "Project-level IAM grants"
  type = map(object({
    role   = string
    member = string
  }))
  default = {}
}

variable "bucket_grants" {
  description = "Bucket-level IAM grants"
  type = map(object({
    bucket = string
    role   = string
    member = string
  }))
  default = {}
}

variable "service_account_grants" {
  description = "Service-account-level IAM grants"
  type = map(object({
    service_account_id = string
    role               = string
    member             = string
  }))
  default = {}
}
