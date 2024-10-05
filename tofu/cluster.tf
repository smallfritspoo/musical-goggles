data "digitalocean_kubernetes_versions" "versions" {}

resource "digitalocean_kubernetes_cluster" "web-public" {
  name    = var.cluster_name
  region  = var.region
  version = data.digitalocean_kubernetes_versions.versions.latest_version

  node_pool {
    name       = "${var.cluster_name}-base-pool"
    size       = var.default_node_size
    node_count = var.min_nodes
  }
}
