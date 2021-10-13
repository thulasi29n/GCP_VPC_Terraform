# NAT Gateway

# https://www.terraform.io/docs/providers/google/r/compute_router_nat.html

resource "google_compute_router_nat" "nat" {

  name                               = "nat"

  router                             = google_compute_router.router.name

  region                             = google_compute_router.router.region

  nat_ip_allocate_option             = "AUTO_ONLY"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

 

  subnetwork {

    name                    = "private"

    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]

  }

}