resource "digitalocean_vpc" "rifqoi_vpc" {
  name     = "rifqoi-vpc"
  region   = "sgp1"
  ip_range = "10.0.0.0/24"
}
