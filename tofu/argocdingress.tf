resource "kubectl_manifest" "argocdingressroute" {
  yaml_body = file("argocd-instance/argocdingressroute.yaml")
}
