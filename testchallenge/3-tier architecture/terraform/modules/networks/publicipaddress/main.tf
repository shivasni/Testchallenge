resource "azurerm_public_ip" "pubip" {
  name                = "${var.publicipname}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  allocation_method   = "${var.allocationmethod}"
  domain_name_label   = "${var.domain_name_label}"
}