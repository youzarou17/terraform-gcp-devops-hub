# Input Variables
# GCP Project
variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
    default     = ""
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = ""
}

variable "zone" {
  description = "The GCP zone"
  type        = string
  default     = ""
}

# GCP Compute Engine Machine Type
variable "machine_type" {
  description = "Compute Engine Machine Type"
  type = string
  default = ""
}

variable "network" {
  description = "Network to deploy to. Only one of network or subnetwork should be specified."
  type        = string
  default     = ""
}

variable "subnetwork" {
  description = "Subnet to deploy to. Only one of network or subnetwork should be specified."
  type        = string
  default     = ""
}

variable "zone" {
  type        = string
  description = "Zone where the instances should be created. If not specified, instances will be spread across available zones in the region."
  default     = ""
}

variable "vminstance_name" {
  type        = string
  description = "VM Instance Name"
  default     = ""
}

variable "firewall_tags" {
  description = "List of firewall tags"
  type        = list(string)
}