# Public Subnet

# https://www.terraform.io/docs/providers/google/r/compute_subnetwork.html

resource "google_compute_subnetwork" "public" {

  name          = "public"

  ip_cidr_range = "10.0.0.0/24"

  region        = "us-west2"

  network       = google_compute_network.main.id

}

 

# Private Subnet

# https://www.terraform.io/docs/providers/google/r/compute_subnetwork.html

resource "google_compute_subnetwork" "private" {

  name          = "private"

  ip_cidr_range = "10.0.1.0/24"

  region        = "us-west2"

  network       = google_compute_network.main.id

}