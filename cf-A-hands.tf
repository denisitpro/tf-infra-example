resource "cloudflare_record" "c1_devel_tap_01_ipv4" {
  zone_id         = local.current_cf_zone_id
  name            = "tap-01"
  value           = "152.42.130.61"
  type            = "A"
  proxied         = false
  allow_overwrite = true
}


resource "cloudflare_record" "c1_devel_tap_cert_ipv4" {
  zone_id         = local.current_cf_zone_id
  name            = "tap"
  value           = "152.42.130.61"
  type            = "A"
  proxied         = true
  allow_overwrite = true
}
