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

resource "yandex_compute_instance" "vm-yc-ubuntu-01" {
  name = "vm-yc-ubuntu-01"

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = var.ubuntu_image_id
      size     = var.disk_size
      type     = var.disk_type
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.ssh_public_key)}"
  }
}

resource "yandex_vpc_network" "network-1" {
  name = "network-1"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet-1"
  zone           = var.zone
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.0.0/24"]
}

output "internal_ip_address_vm_1" {
  value = yandex_compute_instance.vm-yc-ubuntu-01.network_interface.0.ip_address
}

output "external_ip_address_vm_1" {
  value = yandex_compute_instance.vm-yc-ubuntu-01.network_interface.0.nat_ip_address
}