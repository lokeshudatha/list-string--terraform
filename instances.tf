resource "google_compute_instance" "localinstances" {
  name = var.name[1]
  zone = var.zone[0]
  machine_type = var.machine_type[1]
  boot_disk {
    initialize_params {
      image = "debian-12"
    }
  }
  network_interface {
    network = "default"
    access_config {
      
    }
  }
}