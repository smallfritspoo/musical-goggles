resource "kubernetes_namespace" "thedisforduchesne" {
  metadata {
    name = "thedisforduchesne"
  }
}

resource "kubectl_manifest" "argoapplicationthedisforduchesne" {
  depends_on = [helm_release.argocd]
  yaml_body  = file("argocd-instance/thedisforduchesne-application.yaml")
}

