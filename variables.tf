variable "region" {
  description = "OCI region, e.g. ap-mumbai-1"
  type        = string
}

variable "compartment_ocid" {
  description = "OCID of the compartment to create resources in"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to your SSH public key (.pub file)"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "Your public IP in CIDR form, e.g. 203.0.113.10/32"
  type        = string
}

variable "shape" {
  description = "Compute shape (VM.Standard.E2.1.Micro is Always Free eligible)"
  type        = string
  default     = "VM.Standard.E2.1.Micro"
}
