resource "kubectl_manifest" "argoapplicationthedisforduchesne" {
  depends_on = [
    helm_release.argocd,
    kubernetes_namespace.thedisforduchesne
  ]
  yaml_body = file("argocd-instance/thedisforduchesne-application.yaml")
}

