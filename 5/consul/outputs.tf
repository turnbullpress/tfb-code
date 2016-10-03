output "consul_server_address" {
  value = ["${module.consul.consul_dns_address}"]
}

output "consul_host_addresses" {
  value = ["${module.consul.consul_host_addresses}"]
}
