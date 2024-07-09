resource "hcloud_server" "c1_infra_db1" {
  count       = 1
  name        = "${var.region_code}-${var.stand_name}-db-${format("%02d", count.index + 1)}"
  server_type = "cpx21"
  image       = "ubuntu-24.04"
  location    = "fsn1"
  ssh_keys = [
    var.hcloud_ssh_key_id
  ]
  user_data = file("./user_data/user_data_hetzner_v1.sh")

  lifecycle {
    ignore_changes = [user_data, image]
  }

  network {
#     network_id = hcloud_network.c1_infra_net16.id
    network_id = hcloud_network_subnet.c1_db_net.network_id
    ip         = cidrhost("10.50.20.0/24", count.index + 1)
  }


#   firewall_ids = [
# #    hcloud_firewall.c1_infra_fw_db.id,
#      hcloud_firewall.c1_infra_fw_base.id
#   ]

  depends_on = [
    hcloud_network_subnet.c1_db_net
  ]

}

resource "hcloud_server_network" "db1_local_ip" {
  count       = length(hcloud_server.c1_infra_db1)
  server_id   = hcloud_server.c1_infra_db1[count.index].id
  network_id  = hcloud_network.c1_infra_net16.id
  ip          = cidrhost("10.50.20.0/24", count.index + 1)
}