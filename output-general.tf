# output "db1_ipv4_local" {
#   value = [for instance in module.hetzner_fsn1_c1_infra.c1_infra_db1_local_ips : instance.local_ip]
# }