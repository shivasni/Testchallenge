resource "azurerm_storage_account" "biitbstorage" {
  name                      = "${var.storagename}"
  location                  = "${var.location}"
  resource_group_name       = "${var.resource_group_name}"
  account_tier              = "${var.storage_account_tier}"
  account_replication_type  = "${var.storage_replication_type}"
}