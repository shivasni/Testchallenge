output "id" {
  value = "${azurerm_storage_account.biitbstorage.id}"
}
output "storage_connection" {
  value = "${azurerm_storage_account.biitbstorage.primary_connection_string}"
}

output "name" {
 value = "${azurerm_storage_account.biitbstorage.name}"
}