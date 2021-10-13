# Cloud Router

# https://www.terraform.io/docs/providers/google/r/compute_router.html

resource "google_compute_router" "router" {

  name    = "router"

  network = google_compute_network.main.id

  bgp {

    asn            = 64514

    advertise_mode = "CUSTOM"

  }

}