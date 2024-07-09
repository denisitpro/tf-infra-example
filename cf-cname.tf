resource "cloudflare_record" "c1_infra_mgmt1_cname" {
  zone_id    = local.current_cf_zone_id
  count      = length(cloudflare_record.c1_infra_mgmt1_ipv4)
  name       = "mgmt-${format("%02d", count.index + 1)}"
  value      = cloudflare_record.c1_infra_mgmt1_local_ipv4[count.index].hostname
  type       = "CNAME"
  proxied    = false
  depends_on = [cloudflare_record.c1_infra_mgmt1_ipv4]
}

resource "cloudflare_record" "c1_infra_db1_cname" {
  zone_id    = local.current_cf_zone_id
  count      = length(cloudflare_record.c1_infra_db1_ipv4)
  name       = "db-${format("%02d", count.index + 1)}"
  value      = cloudflare_record.c1_infra_db1_local_ipv4[count.index].hostname
  type       = "CNAME"
  proxied    = false
  depends_on = [cloudflare_record.c1_infra_db1_ipv4]
}
