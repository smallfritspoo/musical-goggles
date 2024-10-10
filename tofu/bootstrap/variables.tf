variable "do_token" {
  description = "Digitalocean API Token"
  type        = string
  sensitive   = true
}

variable "cluster_name" {
  description = "k8s cluster name"
  type        = string
}

variable "region" {
  description = "datacenter region to create in"
  type        = string
  default     = "sfo2"
}

variable "default_node_size" {
  description = "basic node size"
  type        = string
}

variable "min_nodes" {
  description = "minimum number of nodes"
  type        = number
}
