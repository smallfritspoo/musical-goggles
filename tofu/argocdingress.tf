resource "kubectl_manifest" "argocdingressroute" {
  depends_on = [helm_release.traefik]
  yaml_body = file("argocd-instance/argocdingressroute.yaml")
}
