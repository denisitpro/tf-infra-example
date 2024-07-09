resource "hcloud_network" "c1_infra_net16" {
  name     = "c1-infra"
  ip_range = "10.50.0.0/16"
}

resource "hcloud_network_subnet" "c1_mgmt_net" {
  network_id   = hcloud_network.c1_infra_net16.id
  type         = "cloud"
  network_zone = "eu-central"
  ip_range     = "10.50.4.0/24"
}

resource "hcloud_network_subnet" "c1_db_net" {
  network_id   = hcloud_network.c1_infra_net16.id
  type         = "cloud"
  network_zone = "eu-central"
  ip_range     = "10.50.20.0/24"
}