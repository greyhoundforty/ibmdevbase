data "ibm_compute_ssh_key" "deploymentKey" {
  label = var.ssh_key_name
}

resource "random_id" "hostname" {
  byte_length = 4
}

resource "random_id" "password" {
  byte_length = 16
}

resource "ibm_compute_vm_instance" "node" {
  hostname             = random_id.hostname.hex
  domain               = var.domain
  image_id             = var.image
  datacenter           = var.datacenter
  network_speed        = 1000
  hourly_billing       = true
  private_network_only = false
  local_disk           = true
  flavor_key_name      = var.flavor_key_name
  tags                 = [var.datacenter]
  ssh_key_ids          = [data.ibm_compute_ssh_key.deploymentKey.id]
}

output "ssh_ip" {
  value = ibm_compute_vm_instance.node.ipv4_address
}


