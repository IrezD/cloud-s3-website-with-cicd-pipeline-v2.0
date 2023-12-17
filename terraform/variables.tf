variable "default_region" {
  type        = string
  description = "Region where resources are deployed in"
  default     = "eu-central-1"
}

variable "acm_region" {
  type        = string
  description = "Region where resources are deployed in"
  default     = "us-east-1"
}

variable "env" {
  type        = string
  description = "Reference to different Environment"
}

variable "fqdn" {
  description = "Fuly qualified domain name"
}
