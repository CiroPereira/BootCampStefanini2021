resource "google_compute_instance" "default" {
  name         = "rancher"
  machine_type = "n2-standard-4"
  zone         = var.region

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      size = 80
    }
  }

  network_interface {
    network = "default"
  }
    tags = ["http-https-server"]
}

resource "google_compute_firewall" "http-server" {
  name    = "allow-http-https"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
 
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
}