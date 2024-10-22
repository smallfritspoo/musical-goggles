provider "digitalocean" {
  token = var.do_token
}

provider "kubernetes" {
  #  host  = digitalocean_kubernetes_cluster.web-public.endpoint
  #  token = digitalocean_kubernetes_cluster.web-public.kube_config[0].token
  #  cluster_ca_certificate = base64decode(
  #    digitalocean_kubernetes_cluster.web-public.kube_config[0].cluster_ca_certificate
  #  )
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    #    host  = digitalocean_kubernetes_cluster.web-public.endpoint
    #    host  = digitalocean_kubernetes_cluster.web-public.endpoint
    #    token = digitalocean_kubernetes_cluster.web-public.kube_config[0].token
    #    cluster_ca_certificate = base64decode(
    #      digitalocean_kubernetes_cluster.web-public.kube_config[0].cluster_ca_certificate
    #    )
    config_path = "~/.kube/config"
  }
}

provider "kubectl" {
  #  host  = digitalocean_kubernetes_cluster.web-public.endpoint
  #  token = digitalocean_kubernetes_cluster.web-public.kube_config[0].token
  #  cluster_ca_certificate = base64decode(
  #    digitalocean_kubernetes_cluster.web-public.kube_config[0].cluster_ca_certificate
  #  )
  load_config_file = true
}
