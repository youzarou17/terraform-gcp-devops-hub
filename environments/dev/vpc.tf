# Resource: VPC
resource "google_compute_network" "myvpc" {
  project = var.project_id
  name = "${local.name}-vpc"
  auto_create_subnetworks = false   
}

# Resource: Subnet
resource "google_compute_subnetwork" "mysubnet" {
  name = "${local.name}-${var.region}-subnet"
  region = var.region
  ip_cidr_range = "10.128.0.0/20"
  network = google_compute_network.myvpc.id 
}