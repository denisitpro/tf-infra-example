# resource "hcloud_firewall" "c1_infra_fw_base" {
#   name = "base-rules"
#
#   # prom
#   rule {
#     description = "prom rules"
#     direction   = "in"
#     protocol    = "tcp"
#     port        = "9100"
#     source_ips = [
#       "167.172.44.107",
#       "2a03:b0c0:2:d0::fba:c001"
#     ]
#   }
#
#   rule {
#     description = "consul rules - tcp"
#
#     direction = "in"
#     protocol  = "tcp"
#     port      = "8300-8302"
#     source_ips = [
#       "0.0.0.0/0",
#       "::/0"
#     ]
#   }
#   rule {
#     description = "consul rules - udp"
#     direction   = "in"
#     protocol    = "udp"
#     port        = "8300-8302"
#     source_ips = [
#       "0.0.0.0/0",
#       "::/0"
#     ]
#   }
# }