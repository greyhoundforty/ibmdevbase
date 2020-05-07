variable "datacenter" {
  description = "Datacenter where the instance will be deployed. Default is wdc07."
  type        = string
  default     = "wdc07"
}

variable "flavor_key_name" {
  description = "Instance size. The default is a local SSD based instance 8x16"
  type        = string
  default     = "BL2_8X16X100"
}

variable "domain" {
  description = "Domain name to assign to the instance."
  type        = string
  default     = "cdetesting.com"
}

variable "ssh_key_name" {
  description = "The name of the SSH key you've uploaded to the cloud portal."
  type        = string
  default     = ""
}

variable "image" {
  description = "The image template ID for the instance."
  type        = string
  default     = "4797200"
}