module "hetzner_fsn1_c1_infra" {
  source            = "./modules/fsn1-c1-infra"
  region_code       = "fsn1"
  stand_name        = "c1-infra"
  hcloud_ssh_key_id = hcloud_ssh_key.devops_ssh_public_key.id
  providers = {
    hcloud = hcloud
  }
}