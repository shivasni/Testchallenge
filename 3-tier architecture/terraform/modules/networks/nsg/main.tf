resource "azurerm_network_security_group" "nsg" {
  name                = "${var.nsgname}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
}
