resource "azurerm_subnet" "internal" {
  name                 = "${var.sname}"
  resource_group_name  = "${var.resourcegroupname}"
  virtual_network_name = "${var.vnetname}"
  address_prefix       = "${var.adrprefix}"
  network_security_group_id = "${var.network_security_group_id}"
}