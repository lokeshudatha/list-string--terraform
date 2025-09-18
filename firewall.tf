resource "google_compute_network" "local-network" {
  name = var.network
  auto_create_subnetworks = false 
}

resource "google_compute_firewall" "local-firewall" {
  name = var.name[1]
  network = var.network
  direction = "INGRESS"
  allow {
    ports = [tostring(tolist(var.ports)[0])]
    protocol = "tcp"
  }
  source_ranges = ["10.0.0.0/21"]
}