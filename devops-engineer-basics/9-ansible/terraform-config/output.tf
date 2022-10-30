output "external_ip_address_build-upstream-node-01" {
  value = yandex_compute_instance.build-upstream-node-01.network_interface.0.nat_ip_address
}

output "internal_ip_address_build-upstream-node-01" {
  value = yandex_compute_instance.build-upstream-node-01.network_interface.0.ip_address
}

output "external_ip_address_webserver-node-01" {
  value = yandex_compute_instance.webserver-node-01.network_interface.0.nat_ip_address
}

output "internal_ip_address_webserver-node-01" {
  value = yandex_compute_instance.webserver-node-01.network_interface.0.ip_address
}