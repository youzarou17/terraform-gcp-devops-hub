# Module Block: Create a single Compute Engine instance
module "myvminstance" {
  source  = "../../modules/vm-instance"
  vminstance_name = "${local.name}-myapp1"
  machine_type = var.machine_type
  zone = var.zone
  firewall_tags = [tolist(google_compute_firewall.fw_ssh.target_tags)[0], tolist(google_compute_firewall.fw_http.target_tags)[0]]
  subnetwork = google_compute_subnetwork.mysubnet.id
}

/*
# Resource Block: Create a single Compute Engine instance
resource "google_compute_instance" "myapp1" {
  name         = "${local.name}-myapp1"
  machine_type = var.machine_type
  zone         = "us-central1-a"
  tags        = [tolist(google_compute_firewall.fw_ssh.target_tags)[0], tolist(google_compute_firewall.fw_http.target_tags)[0]]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }
  # Install Webserver
  metadata_startup_script = file("${path.module}/app1-webserver-install.sh")
  network_interface {
    subnetwork = google_compute_subnetwork.mysubnet.id   
    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}
*/