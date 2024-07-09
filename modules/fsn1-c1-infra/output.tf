output "c1_infra_mgmt1" {
  value = [for instance in hcloud_server.c1_infra_mgmt : {
    id             = instance.id
    name           = instance.name
    ipv4_address   = instance.ipv4_address
    ipv6_addresses = instance.ipv6_address
  }]
}

# # output "c1_infra_chatwoot1" {
# #   value = [for instance in hcloud_server.c1_infra_chatwoot : {
# #     id             = instance.id
# #     name           = instance.name
# #     ipv4_address   = instance.ipv4_address
# #     ipv6_addresses = instance.ipv6_address
# #   }]
# # }