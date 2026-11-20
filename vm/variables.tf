variable "vm_name" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "zone" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "service_account_email" {
  description = "Dedicated service account attached to the VM"
  type        = string
}
