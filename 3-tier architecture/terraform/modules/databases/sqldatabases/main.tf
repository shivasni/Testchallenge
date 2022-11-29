resource "azurerm_sql_database" "Azure_sqldb" {
  name                = "${var.namedatabase}"
  resource_group_name = "${var.resourcegroupname}"
  location            = "${var.location}"
  server_name         = "${var.servername}"
}