terraform {

  required_version = ">= 0.1.8"

  required_providers {

    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.0.1"
    }

    kubectl = {
      source  = "alekc/kubectl"
      version = ">= 1.7.0"
    }
  }
}
