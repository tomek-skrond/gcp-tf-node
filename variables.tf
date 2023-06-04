variable "credential_file" {
  description = "File with creds"
  type        = string
}

variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}

variable "project_zone" {
  description = "Project zone"
  type        = string
}

variable "ssh_pubkey" {
  description = "Public key for ssh in metadata"
  type        = string
}

variable "ssh_user" {
  description = "User name for a gcp instance with key"
  type        = string
}