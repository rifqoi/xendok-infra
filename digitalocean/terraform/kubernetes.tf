resource "digitalocean_kubernetes_cluster" "rifqoi_cluster" {
  name     = "rifqoi-cluster"
  region   = "sgp1"
  version  = "1.28.2-do.0"
  vpc_uuid = digitalocean_vpc.rifqoi_vpc.id

  tags = ["xendok", "kubernetes"]

  node_pool {
    name       = "kube-pool1"
    size       = "s-2vcpu-4gb"
    auto_scale = false
    node_count = 3
    labels = {
      "service" = "xendok"
    }
  }
}
