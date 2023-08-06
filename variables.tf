variable "CLIENT_ID" {
  type      = string
  sensitive = true
}

variable "SECRET" {
  type      = string
  sensitive = true
}

variable "SUBSCRIPTION_ID" {
  type      = string
  sensitive = true
}
variable "TENANT_ID" {
  type      = string
  sensitive = true
}

variable "resource_group_name" {
  type = string
}

variable "prefix" {
  type = string
}

variable "kubernetes_cluster_name" {
  type = string
}

variable "kubernetes_cluster_dns_prefix" {
  type = string
}
