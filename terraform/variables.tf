variable "tag_name" {
  description = "Tag name for resources"
}


variable "region" {
  type        = string
  description = "Region where resources are deployed in"
  default     = "eu-central-1"
}

variable "env" {
  type        = string
  description = "Reference to different Environment"
}

variable "fqdn" {
  description = "Fuly qualified domain name"
}