resource "azurerm_sql_server" "sqlserver" {
  name                         = "${var.namesql}"
  resource_group_name          = "${var.resourcegroupname}"
  location                     = "${var.location}"
  version                      = "${var.versionsql}"
  administrator_login          = "${var.adminlogin}"
  administrator_login_password = "${var.adminpasswd}"
}