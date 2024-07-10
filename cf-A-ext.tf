# resource "cloudflare_record" "c1_infra_mgmt1_ipv4" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(module.hetzner_fsn1_c1_infra.c1_infra_mgmt1)
#   name            = "mgmt-${format("%02d", count.index + 1)}-ext"
#   value           = module.hetzner_fsn1_c1_infra.c1_infra_mgmt1[count.index].ipv4_address
#   type            = "A"
#   proxied         = false
#   allow_overwrite = true
# }
#
# resource "cloudflare_record" "c1_infra_mgmt1_ipv6" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(module.hetzner_fsn1_c1_infra.c1_infra_mgmt1)
#   name            = "mgmt-${format("%02d", count.index + 1)}-ext"
#   value           = module.hetzner_fsn1_c1_infra.c1_infra_mgmt1[count.index].ipv6_addresses
#   type            = "AAAA"
#   proxied         = false
#   allow_overwrite = true
# }
#
# #
# resource "cloudflare_record" "c1_infra_db1_ipv4" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(module.hetzner_fsn1_c1_infra.c1_infra_db1)
#   name            = "db-${format("%02d", count.index + 1)}-ext"
#   value           = module.hetzner_fsn1_c1_infra.c1_infra_db1[count.index].ipv4_address
#   type            = "A"
#   proxied         = false
#   allow_overwrite = true
# }
#
# resource "cloudflare_record" "c1_infra_db1_ipv6" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(module.hetzner_fsn1_c1_infra.c1_infra_db1)
#   name            = "db-${format("%02d", count.index + 1)}-ext"
#   value           = module.hetzner_fsn1_c1_infra.c1_infra_db1[count.index].ipv6_addresses
#   type            = "AAAA"
#   proxied         = false
#   allow_overwrite = true
# }
