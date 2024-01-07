terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
  backend "local" {
    path = "terraform.tfstate"
  }
}

# From -var="rifqoi_do_token=" arguments and *.tfvars
variable "rifqoi_do_token" {
  type        = string
  description = "Personal access token for digital ocean."
}

provider "digitalocean" {
  token = var.rifqoi_do_token
}
