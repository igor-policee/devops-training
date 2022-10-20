variable "zone" {
  default = "ru-central1-b"
}

variable "yandex-token" {
  type        = string
  description = "Yandex Cloud security OAuth token"
  default     = "Hidden var in terraform.tfvars file"
}

variable "yandex-cloud-id" {
  type        = string
  description = "Yandex Cloud ID"
  default     = "Hidden var in terraform.tfvars file"
}

variable "yandex-folder-id" {
  type        = string
  description = "Yandex Cloud Folder ID"
  default     = "Hidden var in terraform.tfvars file"
}

variable "cores" {
  type    = string
  default = "4"
}

variable "memory" {
  type    = string
  default = "4"
}

variable "core_fraction" {
  type    = string
  default = "20"
}

variable "disk_size" {
  type    = string
  default = "50"
}

variable "disk_type" {
  type    = string
  default = "network-ssd"
}

variable "ubuntu_image_id" {
  type    = string
  default = "fd8kdq6d0p8sij7h5qe3"
}

variable "ssh_public_key" {
  type    = string
  default = "/home/igor-polishchuk/.ssh/yc_key.pub"
}