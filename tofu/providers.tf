#provider "digitalocean" {
#  token = var.do_token
#}

#provider "kubernetes" {
#  host  = module.cluster.kubernetes_cluster.digitalocean_kubernetes_cluster.web-public.endpoint
#  token = module.cluster.kubernetes_cluster.digitalocean_kubernetes_cluster.web-public.kube_config[0].token
#  cluster_ca_certificate = base64decode(
#    module.cluster.kubernetes_cluster.digitalocean_kubernetes_cluster.web-public.kube_config[0].cluster_ca_certificate
#  )
#}
#
#provider "helm" {
#  kubernetes {
#    #    host  = digitalocean_kubernetes_cluster.web-public.endpoint
#    host  = module.cluster.kubernetes_cluster.digitalocean_kubernetes_cluster.web-public.endpoint
#    token = module.cluster.kubernetes_cluster.digitalocean_kubernetes_cluster.web-public.kube_config[0].token
#    cluster_ca_certificate = base64decode(
#      module.cluster.kubernetes_cluster.digitalocean_kubernetes_cluster.web-public.kube_config[0].cluster_ca_certificate
#    )
#  }
#}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "docker-desktop"
}

provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"
    config_context = "docker-desktop"
  }
}
