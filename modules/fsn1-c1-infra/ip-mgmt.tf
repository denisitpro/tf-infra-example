resource "hcloud_primary_ip" "mgmt1_ipv4" {
  count         = 1 # not set length(hcloud_server.mgmt1) - cycle dependens
  name          = "mgmt1-ipv4-${format("%02d", count.index + 1)}"
  datacenter    = "fsn1-dc14"
  type          = "ipv4"
  assignee_type = "server"
  auto_delete   = false
}

resource "hcloud_primary_ip" "mgmt1_ipv6" {
  count         = 1
  name          = "mgmt1-ipv6-${format("%02d", count.index + 1)}"
  datacenter    = "fsn1-dc14"
  type          = "ipv6"
  assignee_type = "server"
  auto_delete   = false
}
