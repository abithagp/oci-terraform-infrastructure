# oci-terraform-infrastructure
# OCI Terraform Infrastructure

Terraform code to provision a basic network and compute instance on Oracle Cloud Infrastructure (OCI).

## What it creates
- Virtual Cloud Network (VCN) with CIDR 10.0.0.0/16
- Internet gateway and public route table
- Security list allowing SSH (port 22) only from a single IP
- Public subnet (10.0.1.0/24)
- Oracle Linux compute instance (Always Free eligible shape)

## Prerequisites
- OCI account and a compartment OCID
- OCI CLI config at `~/.oci/config` (API key authentication)
- Terraform 1.3 or later
- An SSH key pair

## Usage
```bash
cp terraform.tfvars.example terraform.tfvars
# edit terraform.tfvars with your own values
terraform init
terraform validate
terraform plan
terraform apply
```
To remove everything:
```bash
terraform destroy
```

## Files
| File | Purpose |
|---|---|
| provider.tf | OCI provider and authentication |
| variables.tf | Input variables |
| main.tf | VCN, subnet, security list and instance |
| outputs.tf | Public IP of the instance |
| terraform.tfvars.example | Template for your own values |

## Security notes
- Authentication uses `~/.oci/config`, so no keys are stored in this repo.
- State files and `.tfvars` are excluded through `.gitignore`.
- SSH is restricted to one IP address instead of 0.0.0.0/0.
