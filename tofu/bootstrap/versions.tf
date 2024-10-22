terraform {

  required_version = ">= 0.1.8"

  required_providers {

    # https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    # https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }

    # https://registry.terraform.io/providers/hashicorp/helm/latest/docs
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.0.1"
    }

    # https://registry.terraform.io/providers/alekc/kubectl/latest/docs
    kubectl = {
      source  = "alekc/kubectl"
      version = ">= 1.7.0"
    }

  }
}
