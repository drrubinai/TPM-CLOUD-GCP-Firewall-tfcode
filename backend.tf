# Terraform configuration
terraform {
  backend "remote" {
    organization = "epam092020"
    workspaces {
      name = "epm-sec-terraform-template-1"
    }
  }
}