# API token required for cluster initial configuration
variable "do_token" {
  description = "Digitalocean API Token"
  type        = string
  sensitive   = true
}

# The cluster name
variable "cluster_name" {
  description = "k8s cluster name"
  type        = string
}

# The region to create in
variable "region" {
  description = "datacenter region to create in"
  type        = string
  default     = "sfo2"
}

# Basic node sizes. Prefer larger nodes to handle k8s client services
variable "default_node_size" {
  description = "basic node size"
  type        = string
}

# Minimum number of nodes used for autoscaling
variable "min_nodes" {
  description = "minimum number of nodes"
  type        = number
}
