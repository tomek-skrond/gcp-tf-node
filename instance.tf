# Create a single Compute Engine instance
resource "google_compute_instance" "default" {
  name         = "flask-vm"
  machine_type = "e2-micro"
  zone         = "europe-west1-b"
  tags         = ["ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  # Install Flask
  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python3-pip rsync; pip install flask"

  network_interface {
    subnetwork = google_compute_subnetwork.default.id

    access_config {
      # Include this section to give the VM an external IP address
    }
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_pubkey)}"
  }
}