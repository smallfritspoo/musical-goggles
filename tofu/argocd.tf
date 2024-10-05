resource "helm_release" "argocd" {
  name             = "argocd"
  chart            = "argo-cd"
  repository       = "https://argoproj.github.io/argo-helm"
  version          = "7.5.2"
  timeout          = "1500"
  namespace        = "argocd"
  create_namespace = true
  values = [
    file("argocd-instance/application.yaml")
  ]
}
