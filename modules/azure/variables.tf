variable "rsc_name" {
  default     = "unnamed_rsc"
  type        = string
  description = "A placeholder for resources names"
}

variable "location_id" {
  type        = string
  description = "Azure location for this resource"
}

variable "tags" {
  type        = map
  description = "Tags to classify resources"
}
