resource "azurerm_virtual_network" "main" {
  name                = "${var.namevnet}"
  address_space       = "${var.address_space}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
}
