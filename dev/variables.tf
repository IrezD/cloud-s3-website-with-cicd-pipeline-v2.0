variable "ami" {
  default = "ami-0669b163befffbdfc"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "az" {

}

variable "tag_name" {

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