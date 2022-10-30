resource "yandex_compute_instance" "build-upstream-node-01" {
  name = "build-upstream-node-01"

  resources {
    cores         = var.cores
    memory        = var.memory
    core_fraction = var.core_fraction
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