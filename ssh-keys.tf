resource "hcloud_ssh_key" "devops_ssh_public_key" {
  name       = "devops_ssh_public_key"
  public_key = var.devops1_public_key
}