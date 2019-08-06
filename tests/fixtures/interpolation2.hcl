resource "openstack_networking_port_v2" "port" {
  name       = "port"
  network_id = "id"
  value_specs = {
    "binding:vnic_type" = var.cloud_release == "li" ? "normal" : "normal"
  }
   security_group_ids = [
    id1,
    id2
  ]
  admin_state_up = "true"
}