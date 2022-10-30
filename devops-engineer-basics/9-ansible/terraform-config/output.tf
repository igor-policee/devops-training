output "internal_ip_address__" {
  value = yandex_compute_instance.__.network_interface.0.ip_address
}

output "external_ip_address__" {
  value = yandex_compute_instance.__network_interface.0.nat_ip_address
}