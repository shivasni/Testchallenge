resource "azurerm_sql_firewall_rule" "main" {
  count = "${length(var.endip)}"
  rulefirewallname    = "${var.rulefirewallname}-${count.index}"
  resource_group_name = "${var.resourcegroupname}"
  server_name         = "${var.servername}"
  start_ip_address    = "${var.startip[count.index]}"
  end_ip_address      = "${var.endip[count.index]}"

}