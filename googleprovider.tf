provider "google" {

  credentials = file("/tcb-gcp-aws-328113-981551782391.json")

  project     = "VPC Creation"

  region      = "us-west2"

}