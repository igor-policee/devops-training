terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = var.yandex-token
  cloud_id  = var.yandex-cloud-id
  folder_id = var.yandex-folder-id
  zone      = var.zone
}

output "internal_ip_address_vm-loadbalancer-ubuntu-2-2-01" {
  value = yandex_compute_instance.vm-loadbalancer-ubuntu-2-2-01.network_interface.0.ip_address
}

output "internal_ip_address_vm-instance-ubuntu-2-2-01" {
  value = yandex_compute_instance.vm-instance-ubuntu-2-2-01.network_interface.0.ip_address
}

output "internal_ip_address_vm-instance-ubuntu-2-2-02" {
  value = yandex_compute_instance.vm-instance-ubuntu-2-2-02.network_interface.0.ip_address
}

output "external_ip_address_vm-loadbalancer-ubuntu-2-2-01" {
  value = yandex_compute_instance.vm-loadbalancer-ubuntu-2-2-01.network_interface.0.nat_ip_address
}

output "external_ip_address_vm-instance-ubuntu-2-2-01" {
  value = yandex_compute_instance.vm-instance-ubuntu-2-2-01.network_interface.0.nat_ip_address
}

output "external_ip_address_vm-instance-ubuntu-2-2-02" {
  value = yandex_compute_instance.vm-instance-ubuntu-2-2-02.network_interface.0.nat_ip_address
}
