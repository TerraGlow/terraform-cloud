
# Create a VM instance
resource "google_compute_instance" "vm_instance" {
  name         = "example-vm"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  tags = ["web", "dev"]
}
