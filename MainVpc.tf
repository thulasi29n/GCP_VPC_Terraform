# Main VPC

# https://www.terraform.io/docs/providers/google/r/compute_network.html#example-usage-network-basic

resource "google_compute_network" "main" {

  name                    = "main"

  auto_create_subnetworks = false

}