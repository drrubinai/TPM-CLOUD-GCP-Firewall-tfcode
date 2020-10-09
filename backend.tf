# Terraform configuration
terraform {
  backend "remote" {
    organization = "epam102020"
    workspaces {
      name = "TPM-CLOUD-GCP-Firewall-tfcode"
    }
  }
}