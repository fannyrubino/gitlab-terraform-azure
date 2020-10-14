variable "rsc_name" {
  default     = "unnamed_rsc"
  type        = string
  description = "A placeholder for resources names"
}

variable "location_id" {
  type        = string
  description = "Azure location for this resource"
}

variable "rg_name" {
  type        = string
  description = "resource group for this resource"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix"
}

variable "tags" {
  type        = map
  description = "Tags to classify resources"
}

variable "poolname" {
  type        = string
  description = "kubernetes pool name"
}

variable "node_count" {
  type        = number
  description = "kubernetes node count"
}

variable "vm_size" {
  type        = string
  description = "virtual machine size"
}

variable "client_idvar" {
  type        = string
  description = "azure client id"

}

variable "client_secretvar" {
  type        = string
  description = "azure client secret"

}