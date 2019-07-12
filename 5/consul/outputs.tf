output "consul_server_addresses" {
  value = [module.consul.consul_dns_addresses]
}

output "consul_host_addresses" {
  value = [module.consul.consul_host_addresses]
}

