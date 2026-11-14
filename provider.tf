terraform {
  required_version = ">= 1.3.0"
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

# Authentication comes from ~/.oci/config (never stored in this repo)
provider "oci" {
  region              = var.region
  config_file_profile = "DEFAULT"
}
