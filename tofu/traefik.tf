resource "helm_release" "traefik" {
  namespace        = "traefik"
  create_namespace = true
  name             = "traefik"
  repository       = "https://traefik.github.io/charts"
  chart            = "traefik"

  #values = [file("bootstrap-software/traefik-instance/values.yaml")]

}
