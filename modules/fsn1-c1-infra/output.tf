output "c1_infra_mgmt1" {
  value = [for instance in hcloud_server.c1_infra_mgmt1 : {
    id             = instance.id
    name           = instance.name
    ipv4_address   = instance.ipv4_address
    ipv6_addresses = instance.ipv6_address
  }]
}

output "c1_infra_mgmt1_local_ips" {
  value = [for l_instance in hcloud_server_network.mgmt1_local_ip : {
    local_ip   = l_instance.ip
  }]
}


output "c1_infra_db1" {
  value = [for instance in hcloud_server.c1_infra_db1 : {
    id             = instance.id
    name           = instance.name
    ipv4_address   = instance.ipv4_address
    ipv6_addresses = instance.ipv6_address
  }]
}

output "c1_infra_db1_local_ips" {
  value = [for l_instance in hcloud_server_network.db1_local_ip : {
    local_ip   = l_instance.ip
  }]
}