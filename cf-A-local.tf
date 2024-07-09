resource "cloudflare_record" "c1_infra_mgmt1_local_ipv4" {
  zone_id         = local.current_cf_zone_id
  count           = length(module.hetzner_fsn1_c1_infra.c1_infra_mgmt1_local_ips)
  name            = module.hetzner_fsn1_c1_infra.c1_infra_mgmt1[count.index].name
  value           = module.hetzner_fsn1_c1_infra.c1_infra_mgmt1_local_ips[count.index].local_ip
  type            = "A"
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "c1_infra_db1_local_ipv4" {
  zone_id         = local.current_cf_zone_id
  count           = length(module.hetzner_fsn1_c1_infra.c1_infra_db1_local_ips)
  name            = module.hetzner_fsn1_c1_infra.c1_infra_db1[count.index].name
  value           = module.hetzner_fsn1_c1_infra.c1_infra_db1_local_ips[count.index].local_ip
  type            = "A"
  proxied         = false
  allow_overwrite = true
}
