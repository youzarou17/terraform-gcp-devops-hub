variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
    default     = "methodical-tea-434516-j2"
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone"
  type        = string
  default     = "us-central1-a"
}
variable "machine_type" {
  description = "The machine type for the VM instances"
  type        = string
  default     = "e2-micro"
}

variable "environment" {
  description = "The environment for the deployment"
  type        = string
  default     = "dev"
}

variable "business_division" {
  description = "The business division for the infra belongs"
  type        = string
  default     = "sap"
}
